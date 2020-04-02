///scr_load_game
audio_stop_all();

var file = file_text_open_read(working_directory + "autosave.txt");
var save_string = file_text_read_string(file);
file_text_close(file);
//save_string = base64_decode(save_string);
var save_data = json_decode(save_string);

var save_room = save_data[? "room"];
if (room != save_room){
    room_goto(rm_game);
}

with (obj_pl_stats){
    player_xstart = save_data[? "x"];
    player_ystart = save_data[? "y"];
    if(instance_exists(obj_player)){
        obj_player.x = player_xstart;
        obj_player.y = player_ystart;
        obj_player.phy_position_x = player_xstart;
        obj_player.phy_position_y = player_ystart;
    }else{
        instance_create(304, 240, obj_player);
    }
    hp = 10;
    max_hp = 10;
    stamina = 50;
    max_stamina = 50;
    expr = save_data[? "expr"];
    maxexpr = save_data[? "maxexpr"];
    level = save_data[? "level"];
    attack = save_data[? "attack"];
    boss_bjorn = save_data[? "boss_bjorn"];
    boss_octo = save_data[? "boss_octo"];
    boss_rat =  save_data[? "boss_rat"];
    boss_boar =  save_data[? "boss_boar"];
    boss_gust=  save_data[? "boss_gust"];
    boss_rhino = save_data[? "boss_rhino"] ;
    boss_k9 = save_data[? "boss_k9"];
    boss_dragon = save_data[? "boss_dragon"];
    boss_turtle = save_data[? "boss_turtle"];
    boss_devil = save_data[? "boss_devil"];
}

ds_map_destroy(save_data);
