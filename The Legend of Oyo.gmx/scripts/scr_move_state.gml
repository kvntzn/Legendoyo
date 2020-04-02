///scr_move_state
movement = MOVE;

if(obj_input.key_dash){
    var xdir = lengthdir_x(8, face*90);
    var ydir = lengthdir_y(8, face *90);
    var speaker = instance_place(x+xdir , y+ydir, obj_speaker); 
    if(speaker != noone){
        ///kausapin yung sign then llbas yung dialog
        with(speaker){
            if(!instance_exists(dialog)){
                dialog = instance_create(x+xoffset, y+yoffset, obj_dialog );
                dialog.text = text;
            }else{
                dialog.text_page++;
                dialog.text_count = 0;
                if (dialog.text_page > array_length_1d(dialog.text)-1){
                    with(dialog){
                            instance_destroy();
                       }
                }
            }    
        }
    }else if (obj_pl_stats.stamina >= DASH_COST) {
            //dash
            state = scr_dash_state;
            alarm[0] = room_speed/6;
            obj_pl_stats.stamina -= DASH_COST;
            obj_pl_stats.alarm[0] = room_speed;
    }
}

if(obj_input.key_attack){
    image_index = 0;
        state = scr_attack_state;
}

if(obj_input.key_spell){
  if (obj_pl_stats.stamina >= 20) {
    var p = instance_create(x, y, obj_projectile_player);
    var xforce = lengthdir_x(20, face*90);
    var yforce = lengthdir_y(20, face*90);
    p.creator = id;
    with(p){
        physics_apply_impulse(x, y, xforce, yforce);
    }
  
            //spell
             
            alarm[0] = room_speed/6;
            obj_pl_stats.stamina -= 20;
            obj_pl_stats.alarm[0] = room_speed;
              audio_play_sound(snd_laser,7,false);
    }
  
}
//get direction
dir = point_direction(0,0,obj_input.xaxis,obj_input.yaxis);

//get length
if(obj_input.xaxis == 0 && obj_input.yaxis == 0){
    len = 0;
}
else{
    len = spd;
    scr_get_face(dir); //if moving, you get fixed direction.
}

//movement
hsp = lengthdir_x(len,dir);
vsp = lengthdir_y(len,dir);

phy_position_x += hsp;
phy_position_y += vsp;

//animation
image_speed = .2;
if (len == 0){
    image_index = 0;
}


