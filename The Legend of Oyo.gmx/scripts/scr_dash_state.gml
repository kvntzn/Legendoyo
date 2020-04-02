///scr_dash_state
movement = MOVE;

if (len == 0){
    dir = face * 90;//get direction
}
len = spd*4;//get length

//movement
hsp = lengthdir_x(len,dir);
vsp = lengthdir_y(len,dir);

phy_position_x += hsp;
phy_position_y += vsp;


//dash effect
var dash = instance_create(x, y, obj_dash); //returns id of instance created
dash.sprite_index = sprite_index;
dash.image_index = image_index;

