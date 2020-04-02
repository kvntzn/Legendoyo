///scr_en_check_pl

if(instance_exists(obj_player)){
    var dir = point_distance(x, y, obj_player.x, obj_player.y);
    if(dir <sight){
        state = scr_en_chase;
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        xaxis = lengthdir_x(1, dir);
        yaxis = lengthdir_y(1, dir);        
    }
    else{
       state = scr_en_choose_state;
    }
}
else{
  state =     scr_en_choose_state;
}
