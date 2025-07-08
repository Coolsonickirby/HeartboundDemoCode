function scr_get_input()
{
    global.up_key = 0;
    global.left_key = 0;
    global.down_key = 0;
    global.right_key = 0;
    global.up_key_pressed = 0;
    global.left_key_pressed = 0;
    global.down_key_pressed = 0;
    global.right_key_pressed = 0;
    global.a_key = 0;
    global.b_key = 0;
    global.x_key = 0;
    global.y_key = 0;
    global.accept_key = 0;
    global.cancel_key = 0;
    global.accept_key_held = 0;
    global.any_key = 0;
    global.any_mouse = 0;
    global.any_controller = 0;
    gamepad_set_axis_deadzone(global.gamepad_index, 0.5);
    global.gamepad_axis_lh = gamepad_axis_value(global.gamepad_index, gp_axislh);
    global.gamepad_axis_lv = gamepad_axis_value(global.gamepad_index, gp_axislv);
    gamepad_set_axis_deadzone(global.gamepad_index, 0.1);
    global.gamepad_axis_rh = gamepad_axis_value(global.gamepad_index, gp_axisrh);
    global.gamepad_axis_rv = gamepad_axis_value(global.gamepad_index, gp_axisrv);
    
    switch (global.control_type)
    {
        case 0:
            global.up_key = keyboard_check(vk_up) || keyboard_check(ord(global.up_key_button));
            global.left_key = keyboard_check(vk_left) || keyboard_check(ord(global.left_key_button));
            global.down_key = keyboard_check(vk_down) || keyboard_check(ord(global.down_key_button));
            global.right_key = keyboard_check(vk_right) || keyboard_check(ord(global.right_key_button));
            global.up_key_pressed = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord(global.up_key_button));
            global.left_key_pressed = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord(global.left_key_button));
            global.down_key_pressed = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord(global.down_key_button));
            global.right_key_pressed = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord(global.right_key_button));
            global.accept_key = keyboard_check_pressed(ord(global.accept_key_button)) || mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space);
            global.cancel_key = keyboard_check_pressed(ord(global.cancel_key_button)) || mouse_check_button_pressed(mb_right);
            global.accept_key_held = keyboard_check(ord(global.accept_key_button)) || mouse_check_button(mb_left) || keyboard_check(vk_space);
            global.start_key = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_pause);
            break;
        
        case 1:
            global.up_key = gamepad_button_check(global.gamepad_index, gp_padu) || global.gamepad_axis_lv < 0;
            global.left_key = gamepad_button_check(global.gamepad_index, gp_padl) || global.gamepad_axis_lh < 0;
            global.down_key = gamepad_button_check(global.gamepad_index, gp_padd) || global.gamepad_axis_lv > 0;
            global.right_key = gamepad_button_check(global.gamepad_index, gp_padr) || global.gamepad_axis_lh > 0;
            global.up_key_pressed = gamepad_button_check_pressed(global.gamepad_index, gp_padu);
            global.left_key_pressed = gamepad_button_check_pressed(global.gamepad_index, gp_padl);
            global.down_key_pressed = gamepad_button_check_pressed(global.gamepad_index, gp_padd);
            global.right_key_pressed = gamepad_button_check_pressed(global.gamepad_index, gp_padr);
            global.a_key = gamepad_button_check_pressed(global.gamepad_index, global.controller_button_down);
            global.b_key = gamepad_button_check_pressed(global.gamepad_index, global.controller_button_right);
            global.x_key = gamepad_button_check_pressed(global.gamepad_index, global.controller_button_left);
            global.y_key = gamepad_button_check_pressed(global.gamepad_index, global.controller_button_up);
            global.accept_key = gamepad_button_check_pressed(global.gamepad_index, global.controller_button_down);
            global.cancel_key = gamepad_button_check_pressed(global.gamepad_index, global.controller_button_right);
            global.accept_key_held = gamepad_button_check(global.gamepad_index, global.controller_button_down);
            global.start_key = gamepad_button_check_pressed(global.gamepad_index, gp_start);
            
            if (alarm[0] <= 0)
            {
                global.up_key_pressed = gamepad_button_check(global.gamepad_index, gp_padu) || global.gamepad_axis_lv < 0;
                global.left_key_pressed = gamepad_button_check(global.gamepad_index, gp_padl) || global.gamepad_axis_lh < 0;
                global.down_key_pressed = gamepad_button_check(global.gamepad_index, gp_padd) || global.gamepad_axis_lv > 0;
                global.right_key_pressed = gamepad_button_check(global.gamepad_index, gp_padr) || global.gamepad_axis_lh > 0;
                var check_controls = global.up_key_pressed + global.left_key_pressed + global.down_key_pressed + global.right_key_pressed;
                
                if (check_controls != 0)
                    alarm[0] = 10;
            }
            else
            {
                global.up_key_pressed = gamepad_button_check_pressed(global.gamepad_index, gp_padu);
                global.left_key_pressed = gamepad_button_check_pressed(global.gamepad_index, gp_padl);
                global.down_key_pressed = gamepad_button_check_pressed(global.gamepad_index, gp_padd);
                global.right_key_pressed = gamepad_button_check_pressed(global.gamepad_index, gp_padr);
            }
            
            break;
    }
    
    global.any_key = keyboard_check(vk_anykey);
    global.any_mouse = mouse_check_button(mb_any);
    
    if ((global.any_key + global.any_mouse) >= 1)
    {
        if (global.any_mouse)
        {
            global.control_type = 0;
        }
        else if (keyboard_key != vk_nokey && (keyboard_key < 173 || keyboard_key > 179))
        {
            global.control_type = 0;
            global.last_key = keyboard_key;
            global.last_controller = 0;
        }
    }
    
    global.any_controller = 0;
    
    for (var xx = 32769; xx < 32788; xx++)
    {
        global.any_controller = gamepad_button_check(global.gamepad_index, xx);
        
        if (global.any_controller != 0)
        {
            global.control_type = 1;
            global.last_controller = global.any_controller;
            global.last_key = 0;
            break;
        }
    }
    
    if (abs(global.gamepad_axis_lh + global.gamepad_axis_lv + global.gamepad_axis_rh + global.gamepad_axis_rv) >= 0.1)
    {
        global.control_type = 1;
        global.last_controller = 1;
        global.last_key = 0;
    }
}
