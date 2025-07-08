function load_game()
{
    if (file_exists(global.save_file_name))
    {
        save_file = file_text_open_read(working_directory + global.save_file_name);
        global.world_seed = file_text_read_string(save_file);
        random_set_seed(global.world_seed);
        file_text_readln(save_file);
        global.start_room = asset_get_index(file_text_read_string(save_file));
        file_text_readln(save_file);
        global.start_x = file_text_read_real(save_file);
        file_text_readln(save_file);
        global.start_y = file_text_read_real(save_file);
        file_text_readln(save_file);
        global.player_hp_cur = file_text_read_real(save_file);
        file_text_readln(save_file);
        global.player_hp_max = file_text_read_real(save_file);
        file_text_readln(save_file);
        global.language_known = file_text_read_real(save_file);
        file_text_readln(save_file);
        max_data = array_length(global.storyline_array);
        
        for (story_index = 1; story_index < max_data; story_index++)
        {
            storyline_variable = file_text_read_real(save_file);
            file_text_readln(save_file);
            global.storyline_array[story_index] = storyline_variable;
        }
        
        scr_clothing_change(global.storyline_array[1]);
        file_text_close(save_file);
        
        if (!instance_exists(obj_global_pocketwatch))
            instance_create_depth(-100, -100, 0, obj_global_pocketwatch);
    }
    else
    {
        save_game();
        load_game();
    }
}
