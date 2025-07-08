function load_options()
{
    if (file_exists(global.options_file_name))
    {
        save_file = file_text_open_read(working_directory + global.options_file_name);
        global.volume_main = real(file_text_read_string(save_file));
        audio_master_gain(global.volume_main);
        file_text_readln(save_file);
        global.up_key_button = file_text_read_string(save_file);
        file_text_readln(save_file);
        global.left_key_button = file_text_read_string(save_file);
        file_text_readln(save_file);
        global.down_key_button = file_text_read_string(save_file);
        file_text_readln(save_file);
        global.right_key_button = file_text_read_string(save_file);
        file_text_readln(save_file);
        global.accept_key_button = file_text_read_string(save_file);
        file_text_readln(save_file);
        global.cancel_key_button = file_text_read_string(save_file);
        file_text_readln(save_file);
        global.controller_button_down = real(file_text_read_string(save_file));
        file_text_readln(save_file);
        global.controller_button_right = real(file_text_read_string(save_file));
        file_text_readln(save_file);
        global.controller_button_left = real(file_text_read_string(save_file));
        file_text_readln(save_file);
        global.controller_button_up = real(file_text_read_string(save_file));
        file_text_readln(save_file);
        global.controller_type = real(file_text_read_string(save_file));
        file_text_readln(save_file);
        global.fullscreen_active = real(file_text_read_string(save_file));
        file_text_readln(save_file);
        global.wiggletext_active = real(file_text_read_string(save_file));
        file_text_readln(save_file);
        file_text_close(save_file);
    }
    else
    {
        save_options();
        load_options();
    }
}
