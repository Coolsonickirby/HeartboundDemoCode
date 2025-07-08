if (settings_active == 1)
{
    if (menu_type != global.control_type)
    {
        menu_type = global.control_type;
        global.menu_active = 1;
        
        switch (menu_type)
        {
            case 0:
                instance_destroy(obj_settings_controller_keybind_parent);
                instance_destroy(obj_settings_controller_type);
                keybind_x = cam_center_x - 70;
                keybind_y = cam_center_y - 30;
                instance_create_depth(keybind_x, keybind_y, depth, obj_settings_keybind_w);
                instance_create_depth(keybind_x - 40, keybind_y + 40, depth, obj_settings_keybind_a);
                instance_create_depth(keybind_x, keybind_y + 40, depth, obj_settings_keybind_s);
                instance_create_depth(keybind_x + 40, keybind_y + 40, depth, obj_settings_keybind_d);
                instance_create_depth(keybind_x + 130, keybind_y, depth, obj_settings_arrow_up);
                instance_create_depth(keybind_x + 90, keybind_y + 40, depth, obj_settings_arrow_left);
                instance_create_depth(keybind_x + 130, keybind_y + 40, depth, obj_settings_arrow_down);
                instance_create_depth(keybind_x + 170, keybind_y + 40, depth, obj_settings_arrow_right);
                instance_create_depth(keybind_x - 25, keybind_y + 140, depth, obj_settings_keybind_z);
                instance_create_depth(keybind_x + 25, keybind_y + 140, depth, obj_settings_mouse_left);
                instance_create_depth(keybind_x + 105, keybind_y + 140, depth, obj_settings_keybind_x);
                instance_create_depth(keybind_x + 155, keybind_y + 140, depth, obj_settings_mouse_right);
                break;
            
            case 1:
                instance_destroy(obj_settings_arrow_parent);
                instance_destroy(obj_settings_mouse_parent);
                instance_destroy(obj_settings_keybind_parent);
                
                with (obj_controller_buttons)
                    selected_button = 0;
                
                keybind_x = cam_center_x;
                keybind_y = cam_center_y - 40;
                instance_create_depth(keybind_x, keybind_y - 10, depth, obj_settings_controller_up);
                instance_create_depth(keybind_x - 30, keybind_y + 20, depth, obj_settings_controller_left);
                instance_create_depth(keybind_x, keybind_y + 50, depth, obj_settings_controller_down);
                instance_create_depth(keybind_x + 30, keybind_y + 20, depth, obj_settings_controller_right);
                instance_create_depth(keybind_x, keybind_y + 145, depth, obj_settings_controller_type);
                break;
        }
    }
}
