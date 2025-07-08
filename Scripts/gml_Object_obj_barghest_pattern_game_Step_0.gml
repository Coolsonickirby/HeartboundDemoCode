if (global.control_type == 1)
{
    if (game_started == 1)
    {
        var correct_press = -1;
        
        switch (pattern_array[pattern_current])
        {
            case 1:
                if (global.a_key)
                    correct_press = 1;
                else if (global.b_key)
                    correct_press = 0;
                else if (global.x_key)
                    correct_press = 0;
                else if (global.y_key)
                    correct_press = 0;
                
                break;
            
            case 2:
                if (global.b_key)
                    correct_press = 1;
                else if (global.a_key)
                    correct_press = 0;
                else if (global.x_key)
                    correct_press = 0;
                else if (global.y_key)
                    correct_press = 0;
                
                break;
            
            case 3:
                if (global.x_key)
                    correct_press = 1;
                else if (global.a_key)
                    correct_press = 0;
                else if (global.b_key)
                    correct_press = 0;
                else if (global.y_key)
                    correct_press = 0;
                
                break;
            
            case 4:
                if (global.y_key)
                    correct_press = 1;
                else if (global.a_key)
                    correct_press = 0;
                else if (global.b_key)
                    correct_press = 0;
                else if (global.x_key)
                    correct_press = 0;
                
                break;
        }
        
        if (correct_press == 1)
        {
            with (obj_barghest_pattern_button_parent)
            {
                if (button_number == obj_game_parent.pattern_array[obj_game_parent.pattern_current])
                {
                    sprite_index = sprite_closing;
                    var button_sound = asset_get_index("snd_barghest_pattern_eye_" + string(button_number));
                    scr_sound_play(button_sound, 0.25, 2, false);
                    
                    if (global.storyline_array[23] == 1)
                        scr_damage_target(2, obj_combat_enemy_health_parent, x, y);
                    else
                        scr_damage_target(1, obj_combat_enemy_health_parent, x, y);
                }
            }
            
            pattern_current += 1;
            
            if (pattern_current == pattern_steps)
            {
                alarm[4] = 0;
                alarm[5] = 0;
                alarm[2] = room_speed * 0.5;
                
                with (obj_barghest_pattern_button_parent)
                    button_allowed = 0;
                
                game_started = 0;
            }
        }
        else if (correct_press == 0)
        {
            scr_sound_play(snd_barghest_pattern_charge, 0.3, 2, false);
            
            with (obj_barghest_pattern_button_parent)
            {
                if (sprite_index != sprite_open)
                {
                    sprite_index = sprite_opening;
                    stay_open = 1;
                }
                
                button_allowed = 0;
                button_alpha = 0;
                button_fail = 1;
            }
            
            alarm[4] = 0;
            alarm[5] = 0;
            alarm[2] = room_speed;
            game_started = 0;
        }
    }
}

if (game_ended == 0)
{
    if (global.control_type == 0)
    {
        scr_handle_mouse(true, true);
        
        if (global.storyline_array[23] == 1)
            global.cursor_model = spr_cursor_axe;
        else
            global.cursor_model = spr_cursor_poke;
    }
    else
    {
        sprite_index = spr_combat_controls_gamepad_buttons;
    }
}
