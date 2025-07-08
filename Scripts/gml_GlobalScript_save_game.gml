function save_game()
{
    save_file = file_text_open_write(global.save_file_name);
    file_text_write_string(save_file, global.world_seed);
    file_text_writeln(save_file);
    file_text_write_string(save_file, room_get_name(global.start_room));
    file_text_writeln(save_file);
    file_text_write_real(save_file, global.start_x);
    file_text_writeln(save_file);
    file_text_write_real(save_file, global.start_y);
    file_text_writeln(save_file);
    file_text_write_real(save_file, global.player_hp_cur);
    file_text_writeln(save_file);
    file_text_write_real(save_file, global.player_hp_max);
    file_text_writeln(save_file);
    file_text_write_real(save_file, global.language_known);
    file_text_writeln(save_file);
    max_data = array_length(global.storyline_array);
    
    for (story_index = 1; story_index < max_data; story_index++)
    {
        storyline_variable = global.storyline_array[story_index];
        file_text_write_string(save_file, string(storyline_variable));
        file_text_writeln(save_file);
    }
    
    file_text_close(save_file);
}
