function save_options()
{
    save_file = file_text_open_write(global.options_file_name);
    file_text_write_string(save_file, string(global.volume_main));
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.up_key_button);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.left_key_button);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.down_key_button);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.right_key_button);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.accept_key_button);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.cancel_key_button);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.controller_button_down);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.controller_button_right);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.controller_button_left);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.controller_button_up);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.controller_type);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.fullscreen_active);
    file_text_writeln(save_file);
    file_text_write_string(save_file, global.wiggletext_active);
    file_text_writeln(save_file);
    file_text_close(save_file);
    load_options();
}
