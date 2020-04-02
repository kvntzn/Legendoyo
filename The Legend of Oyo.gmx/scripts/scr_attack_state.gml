/// scr_attack_state

image_speed = .5;
movement = ATTACK;  

if(animation_hit_frame(2)){
    var attack_animation = instance_create(x, y, weapon);
    attack_animation.dir = face*90;
    attack_animation.image_angle = (face*90)+45;
}

/*
switch(sprite_index){
    case spr_pl_down:
        sprite_index = spr_pl_at_down;
    break;
}*/

if(animation_hit_frame(3)){
    var xx = 0;
    var yy = 0;    
    
    switch(face){
        case DOWN:
            xx = x;
            yy = y+12;
        break;
        case UP:
            xx = x;
            yy = y-10;
        break;
        case LEFT:
            xx = x-10;
            yy = y+2;
        break;
        case RIGHT:
            xx = x+10;
            yy = y+2;
        break;
    
    }

    audio_play_sound(snd_sword_attack,8,false);
    var damage = instance_create(xx, yy, obj_dam); //gets the id of player/creator
    damage.creator = id; //initializes so the creator doesn't kill itself
    damage.damage = obj_pl_stats.attack ; // damage is equal to player's attack
    // damage.damage = 10 ; // damage is equal to player's attack
    
}
