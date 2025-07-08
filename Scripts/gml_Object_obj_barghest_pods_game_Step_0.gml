if (global.control_type == 1)
{
    if (instance_exists(obj_barghest_pods_pod))
    {
        if (attack_defeated < attack_number)
        {
            correct_press = -1;
            
            switch (attack_array[attack_defeated])
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
            
            if (correct_press != -1)
            {
                xx = 0;
                total_pods = instance_number(obj_barghest_pods_pod);
                
                for (xx = 0; xx < total_pods; xx++)
                {
                    pod_target = instance_find(obj_barghest_pods_pod, xx);
                    
                    if (pod_target.pod_number == attack_defeated)
                    {
                        with (pod_target)
                        {
                            if (other.correct_press == 1)
                            {
                                if (global.storyline_array[23] == 1)
                                    scr_damage_target(2, obj_combat_enemy_health_parent, x, y);
                                else
                                    scr_damage_target(1, obj_combat_enemy_health_parent, x, y);
                                
                                other.attack_defeated += 1;
                                
                                if (other.attack_defeated == other.attack_number)
                                    other.alarm[2] = room_speed * 0.5;
                                
                                scr_sound_play(snd_global_impact, 0.3, random_range(0.95, 1), false);
                                var death_object = instance_create_depth(x, y, 0, obj_barghest_pods_pod_explosion);
                                death_object.image_angle = image_angle;
                                instance_destroy();
                            }
                            else if (other.correct_press == 0)
                            {
                                speed = 10;
                                pod_state = 1;
                                other.attack_defeated += 1;
                                
                                if (other.attack_defeated == other.attack_number)
                                    other.alarm[2] = room_speed * 0.5;
                            }
                        }
                        
                        break;
                    }
                }
            }
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
