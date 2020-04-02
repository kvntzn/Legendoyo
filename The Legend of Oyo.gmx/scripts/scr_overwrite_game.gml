if file_exists("autosave.txt")
   {
    if show_question("You are going to overwrite the saved game. Continue?")
        {
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
            game_started = 1;
            }
            with(obj_title){
            instance_destroy();
            }
         // room_goto(rm_game);
        }
        else{
            return false;
            with(obj_main_menu){
                game_started = 0;
            }
            with(obj_title){
            instance_destroy();
            }
            room_restart();
        }
    }
    else
    {
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
        // room_goto(rm_game);
    }
