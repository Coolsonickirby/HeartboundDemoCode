switch (button_selected)
{
    case 0:
        button_text = determine_button_text(button_kind);
        break;
    
    case 1:
        var rotate_list = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        var rotate_length = string_length(rotate_list) - 1;
        var rotate_index = irandom_range(0, rotate_length);
        button_text = ds_map_find_value(global.glyph_map, string_char_at(rotate_list, rotate_index));
        button_pressed = 0;
        
        for (var xx = 32769; xx <= 32772; xx++)
        {
            if (gamepad_button_check_pressed(global.gamepad_index, xx))
                button_pressed = xx;
        }
        
        if (button_pressed != 0)
        {
            button_selected = 0;
            button_active = 0;
            button_key = button_pressed;
            key_map = ds_map_create();
            ds_map_add(key_map, global.controller_button_down, obj_settings_controller_down);
            ds_map_add(key_map, global.controller_button_right, obj_settings_controller_right);
            ds_map_add(key_map, global.controller_button_left, obj_settings_controller_left);
            ds_map_add(key_map, global.controller_button_up, obj_settings_controller_up);
            key_value = ds_map_find_value(key_map, button_key);
            key_replace(key_value, button_last);
            key_replace(object_index, button_key);
            button_kind = button_key;
            key_value.button_kind = button_last;
            ds_map_destroy(key_map);
            alarm[0] = 5;
        }
        
        break;
}
