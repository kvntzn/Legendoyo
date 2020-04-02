// apin ni code na 
if file_exists("autosave.txt")
   {
    scr_autoload_game();
   // instance_create(304,240,obj_player);
    instance_create(obj_player_intro.x, obj_player_intro.y,obj_player);
    instance_create(obj_player_intro.x, obj_player_intro.y,obj_view);
    with(obj_view_intro){
        instance_destroy();
    }
    with(obj_player_intro){
    instance_destroy();
    }
    with(obj_main_menu){
    instance_destroy();
    }
    with(obj_title){
            instance_destroy();
            }
    
   }else{
    show_message("No saved game!");
   }

/*if file_exists("autosave.txt")
   {
    scr_autoload_game();
    instance_create(304,240,obj_player);
   
    
   }else{
    show_message("No saved game!");
   }
   
*/
