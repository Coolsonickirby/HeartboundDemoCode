if (position_step == 1)
{
    if (position_set == 0)
    {
        if (y > target_position)
        {
            speed = 0;
            y = target_position;
            position_set = 1;
        }
    }
}
else if (position_step == 2)
{
    if (y < target_position)
        instance_destroy();
}

if (global.control_type == 0)
{
    if (global.accept_key)
    {
        if (object_selected == 1)
        {
            if (button_allowed == 1)
            {
                with (obj_barghest_pattern_game)
                {
                    if (other.button_number != 0)
                    {
                        if (other.button_number == pattern_array[pattern_current])
                        {
                            pattern_current += 1;
                            
                            if (pattern_current == pattern_steps)
                            {
                                alarm[4] = 0;
                                alarm[5] = 0;
                                alarm[2] = room_speed * 0.5;
                                
                                with (obj_barghest_pattern_button_parent)
                                    button_allowed = 0;
                            }
                            
                            var button_sound = asset_get_index("snd_barghest_pattern_eye_" + string(other.button_number));
                            scr_sound_play(button_sound, 0.25, 2, false);
                            other.sprite_index = other.sprite_closing;
                            
                            if (global.storyline_array[23] == 1)
                                scr_damage_target(2, obj_combat_enemy_health_parent, other.x, other.y);
                            else
                                scr_damage_target(1, obj_combat_enemy_health_parent, other.x, other.y);
                        }
                        else
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
                        }
                    }
                }
            }
        }
    }
}
