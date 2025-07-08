function key_replace(arg0, arg1)
{
    switch (arg0)
    {
        case obj_settings_keybind_w:
            global.up_key_button = arg1;
            break;
        
        case obj_settings_keybind_a:
            global.left_key_button = arg1;
            break;
        
        case obj_settings_keybind_s:
            global.down_key_button = arg1;
            break;
        
        case obj_settings_keybind_d:
            global.right_key_button = arg1;
            break;
        
        case obj_settings_keybind_z:
            global.accept_key_button = arg1;
            break;
        
        case obj_settings_keybind_x:
            global.cancel_key_button = arg1;
            break;
        
        case obj_settings_controller_down:
            global.controller_button_down = arg1;
            break;
        
        case obj_settings_controller_right:
            global.controller_button_right = arg1;
            break;
        
        case obj_settings_controller_left:
            global.controller_button_left = arg1;
            break;
        
        case obj_settings_controller_up:
            global.controller_button_up = arg1;
            break;
    }
}
