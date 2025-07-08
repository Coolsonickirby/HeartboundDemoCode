event_inherited();

if (button_selected == 1)
{
    var rotate_list = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var rotate_length = string_length(rotate_list) - 1;
    var rotate_index = irandom_range(0, rotate_length);
    button_text = ds_map_find_value(global.glyph_map, string_char_at(rotate_list, rotate_index));
    
    if (global.any_key)
    {
        valid_check = ds_map_find_value(global.letter_map, keyboard_lastchar);
        
        if (valid_check != undefined)
        {
            button_selected = 0;
            button_active = 0;
            button_key = string_upper(keyboard_lastchar);
            key_map = ds_map_create();
            ds_map_add(key_map, global.up_key_button, obj_settings_keybind_w);
            ds_map_add(key_map, global.left_key_button, obj_settings_keybind_a);
            ds_map_add(key_map, global.down_key_button, obj_settings_keybind_s);
            ds_map_add(key_map, global.right_key_button, obj_settings_keybind_d);
            ds_map_add(key_map, global.accept_key_button, obj_settings_keybind_z);
            ds_map_add(key_map, global.cancel_key_button, obj_settings_keybind_x);
            key_value = ds_map_find_value(key_map, button_key);
            
            if (key_value != undefined)
                key_replace(key_value, button_last);
            
            ds_map_destroy(key_map);
            key_replace(object_index, button_key);
            global.current_menu = 1;
            global.menu_active = 1;
            scr_handle_mouse(true, false);
        }
    }
}
