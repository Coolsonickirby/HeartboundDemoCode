if (global.storyline_array[trash_index] != 0)
{
    if (talking_state == 0)
    {
        if (activated == 1)
        {
            if (last_activated == 0)
            {
                if (global.storyline_array[107] == 0)
                    cur_message = 18;
                else if (global.storyline_array[107] > 0 && global.storyline_array[107] < 2)
                    cur_message = 23;
                else if (global.storyline_array[107] == 2)
                    cur_message = 28;
                
                activate_dialog();
            }
            
            last_activated = activated;
        }
    }
    else if (global.current_talker == id)
    {
        if (options_state == 0)
        {
            if (global.accept_key && text_complete == 1)
            {
                text_complete = 0;
                global.storyline_array[story_index] = 1;
                global.player_direction = 2;
                
                if (global.storyline_array[107] == 0)
                {
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 19;
                            activate_dialog();
                            break;
                        
                        case 2:
                            next_step = 3;
                            cur_message = 20;
                            activate_dialog();
                            break;
                        
                        case 3:
                            next_step = 4;
                            cur_message = 21;
                            activate_dialog();
                            break;
                        
                        case 4:
                            next_step = 5;
                            cur_message = 22;
                            activate_dialog();
                            break;
                        
                        case 5:
                            global.storyline_array[story_index] = 1;
                            end_dialog();
                            instance_destroy();
                            break;
                    }
                }
                else if (global.storyline_array[107] > 0 && global.storyline_array[107] < 2)
                {
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 24;
                            activate_dialog();
                            break;
                        
                        case 2:
                            next_step = 3;
                            cur_message = 25;
                            activate_dialog();
                            break;
                        
                        case 3:
                            next_step = 4;
                            cur_message = 26;
                            activate_dialog();
                            break;
                        
                        case 4:
                            next_step = 5;
                            cur_message = 27;
                            activate_dialog();
                            break;
                        
                        case 5:
                            global.storyline_array[story_index] = 1;
                            end_dialog();
                            instance_destroy();
                            break;
                    }
                }
                else if (global.storyline_array[107] >= 2)
                {
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 29;
                            activate_dialog();
                            break;
                        
                        case 2:
                            next_step = 3;
                            cur_message = 30;
                            activate_dialog();
                            break;
                        
                        case 3:
                            global.storyline_array[25] = 1;
                            
                            if (instance_exists(obj_music_parent))
                            {
                                with (obj_music_parent)
                                    alarm[2] = 1;
                            }
                            
                            next_step = 4;
                            cur_message = 31;
                            activate_dialog();
                            break;
                        
                        case 4:
                            next_step = 5;
                            cur_message = 32;
                            activate_dialog();
                            break;
                        
                        case 5:
                            global.storyline_array[story_index] = 1;
                            end_dialog();
                            instance_destroy();
                            break;
                    }
                }
            }
        }
        else if (text_complete == 1)
        {
            text_complete = 0;
        }
    }
}

if (global.storyline_array[trash_index] > 0)
{
    if (instance_exists(obj_player_parent))
    {
        if (collision_rectangle(obj_player_parent.collide_left_x, obj_player_parent.collide_top_y, obj_player_parent.collide_right_x, obj_player_parent.collide_bottom_y, id, true, false))
        {
            activated = 1;
        }
        else
        {
            activated = 0;
            last_activated = activated;
        }
    }
}
