if (talking_state == 0)
{
    scr_talk();
}
else if (global.current_talker == id)
{
    if (options_state == 0)
    {
        if (global.accept_key && text_complete == 1)
        {
            text_complete = 0;
            
            switch (dialog_step)
            {
                case 1:
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = base_index + 1;
                            text_location = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            next_step = 3;
                            cur_message = base_index + 2;
                            text_location = 5;
                            activate_dialog();
                            break;
                        
                        case 3:
                            next_step = 4;
                            cur_message = base_index + 3;
                            text_location = 5;
                            activate_dialog();
                            break;
                        
                        case 4:
                            end_dialog();
                            text_location = 0;
                            text_border = 1;
                            text_skip = 1;
                            text_fade = 0;
                            cur_message = 9;
                            next_step = 5;
                            alarm[0] = room_speed * 2;
                            break;
                        
                        case 5:
                            end_dialog();
                            text_location = 2;
                            text_border = 0;
                            text_skip = 0;
                            text_fade = 1;
                            cur_message = 10;
                            next_step = 6;
                            
                            if (instance_exists(obj_worldfall_artifact))
                            {
                                with (obj_worldfall_artifact)
                                    alarm[0] = room_speed;
                            }
                            
                            break;
                        
                        case 6:
                            text_location = 0;
                            text_border = 1;
                            text_skip = 1;
                            text_fade = 0;
                            next_step = 7;
                            cur_message = 11;
                            activate_dialog();
                            break;
                        
                        case 7:
                            text_location = 2;
                            text_border = 0;
                            text_skip = 0;
                            text_fade = 1;
                            next_step = 8;
                            cur_message = 12;
                            activate_dialog();
                            break;
                        
                        case 8:
                            text_location = 0;
                            text_border = 1;
                            text_skip = 1;
                            text_fade = 0;
                            next_step = 9;
                            cur_message = 13;
                            activate_dialog();
                            break;
                        
                        case 9:
                            end_dialog();
                            text_location = 2;
                            text_border = 0;
                            text_skip = 0;
                            text_fade = 1;
                            
                            switch (global.storyline_array[119])
                            {
                                case 2:
                                    base_index = 14;
                                    break;
                                
                                case 3:
                                    base_index = 49;
                                    break;
                                
                                case 4:
                                    base_index = 53;
                                    break;
                                
                                case 5:
                                    base_index = 57;
                                    break;
                            }
                            
                            cur_message = base_index;
                            dialog_step = 2;
                            next_step = 1;
                            
                            switch (particle_shift)
                            {
                                case 0:
                                    alarm[0] = room_speed;
                                    break;
                                
                                case 1:
                                    if (instance_exists(obj_worldfall_particles))
                                    {
                                        with (obj_worldfall_particles)
                                            alarm[0] = room_speed;
                                    }
                                    
                                    break;
                            }
                            
                            break;
                    }
                    
                    break;
                
                case 2:
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = base_index + 1;
                            activate_dialog();
                            break;
                        
                        case 2:
                            next_step = 3;
                            text_location = 5;
                            cur_message = base_index + 2;
                            activate_dialog();
                            break;
                        
                        case 3:
                            next_step = 4;
                            cur_message = base_index + 3;
                            activate_dialog();
                            break;
                        
                        case 4:
                            end_dialog();
                            
                            if (instance_exists(obj_worldfall_artifact))
                            {
                                with (obj_worldfall_artifact)
                                    alarm[1] = room_speed;
                            }
                            
                            break;
                    }
                    
                    break;
                
                case 3:
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 34;
                            activate_dialog();
                            break;
                        
                        case 2:
                            next_step = 3;
                            cur_message = 35;
                            text_location = 5;
                            activate_dialog();
                            break;
                        
                        case 3:
                            next_step = 4;
                            cur_message = 36;
                            activate_dialog();
                            break;
                        
                        case 4:
                            end_dialog();
                            text_location = 0;
                            text_border = 1;
                            text_skip = 1;
                            text_fade = 0;
                            cur_message = 46;
                            next_step = 5;
                            alarm[0] = room_speed;
                            break;
                        
                        case 5:
                            text_location = 2;
                            text_border = 0;
                            text_skip = 0;
                            text_fade = 1;
                            next_step = 6;
                            cur_message = 47;
                            activate_dialog();
                            break;
                        
                        case 6:
                            end_dialog();
                            text_location = 5;
                            cur_message = 48;
                            next_step = 7;
                            alarm[2] = 1;
                            break;
                        
                        case 7:
                            end_dialog();
                            text_location = 0;
                            text_border = 1;
                            text_skip = 1;
                            text_fade = 0;
                            cur_message = 37;
                            next_step = 8;
                            alarm[0] = room_speed;
                            break;
                        
                        case 8:
                            next_step = 9;
                            cur_message = 38;
                            activate_dialog();
                            break;
                        
                        case 9:
                            text_location = 2;
                            text_border = 0;
                            text_skip = 0;
                            text_fade = 1;
                            next_step = 10;
                            cur_message = 39;
                            text_location = 2;
                            activate_dialog();
                            break;
                        
                        case 10:
                            end_dialog();
                            text_location = 0;
                            text_border = 1;
                            text_skip = 1;
                            text_fade = 0;
                            cur_message = 40;
                            next_step = 11;
                            alarm[0] = room_speed;
                            break;
                        
                        case 11:
                            text_location = 2;
                            text_border = 0;
                            text_skip = 0;
                            text_fade = 1;
                            next_step = 12;
                            cur_message = 41;
                            text_location = 2;
                            activate_dialog();
                            break;
                        
                        case 12:
                            next_step = 13;
                            cur_message = 42;
                            activate_dialog();
                            break;
                        
                        case 13:
                            next_step = 14;
                            cur_message = 43;
                            text_location = 5;
                            activate_dialog();
                            break;
                        
                        case 14:
                            next_step = 15;
                            cur_message = 44;
                            activate_dialog();
                            break;
                        
                        case 15:
                            end_dialog();
                            text_location = 0;
                            text_border = 1;
                            text_skip = 1;
                            text_fade = 0;
                            cur_message = 45;
                            dialog_step = 1;
                            next_step = 9;
                            particle_shift = 1;
                            alarm[0] = room_speed;
                            break;
                    }
                    
                    break;
                
                case 4:
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
                            text_location = 5;
                            activate_dialog();
                            break;
                        
                        case 3:
                            next_step = 4;
                            cur_message = 21;
                            activate_dialog();
                            break;
                        
                        case 4:
                            end_dialog();
                            text_location = 0;
                            text_border = 1;
                            text_skip = 1;
                            text_fade = 0;
                            cur_message = 46;
                            next_step = 5;
                            alarm[0] = room_speed;
                            break;
                        
                        case 5:
                            text_location = 2;
                            text_border = 0;
                            text_skip = 0;
                            text_fade = 1;
                            next_step = 6;
                            cur_message = 47;
                            activate_dialog();
                            break;
                        
                        case 6:
                            end_dialog();
                            text_location = 5;
                            cur_message = 48;
                            next_step = 7;
                            alarm[2] = 1;
                            break;
                        
                        case 7:
                            end_dialog();
                            text_location = 0;
                            text_border = 1;
                            text_skip = 1;
                            text_fade = 0;
                            cur_message = 22;
                            next_step = 8;
                            alarm[0] = room_speed;
                            break;
                        
                        case 8:
                            next_step = 9;
                            cur_message = 23;
                            activate_dialog();
                            break;
                        
                        case 9:
                            text_location = 2;
                            text_border = 0;
                            text_skip = 0;
                            text_fade = 1;
                            next_step = 10;
                            cur_message = 24;
                            activate_dialog();
                            break;
                        
                        case 10:
                            next_step = 11;
                            cur_message = 25;
                            activate_dialog();
                            break;
                        
                        case 11:
                            end_dialog();
                            text_location = 0;
                            text_border = 1;
                            text_skip = 1;
                            text_fade = 0;
                            cur_message = 26;
                            next_step = 12;
                            alarm[0] = room_speed;
                            break;
                        
                        case 12:
                            next_step = 13;
                            cur_message = 27;
                            activate_dialog();
                            break;
                        
                        case 13:
                            next_step = 14;
                            cur_message = 28;
                            activate_dialog();
                            break;
                        
                        case 14:
                            next_step = 15;
                            cur_message = 29;
                            activate_dialog();
                            break;
                        
                        case 15:
                            text_location = 5;
                            text_border = 0;
                            text_skip = 0;
                            text_fade = 1;
                            next_step = 16;
                            cur_message = 30;
                            activate_dialog();
                            break;
                        
                        case 16:
                            next_step = 17;
                            cur_message = 31;
                            activate_dialog();
                            break;
                        
                        case 17:
                            end_dialog();
                            text_location = 0;
                            text_border = 1;
                            text_skip = 1;
                            text_fade = 0;
                            cur_message = 32;
                            dialog_step = 1;
                            next_step = 9;
                            particle_shift = 1;
                            alarm[0] = room_speed;
                            break;
                    }
                    
                    break;
            }
        }
    }
}
