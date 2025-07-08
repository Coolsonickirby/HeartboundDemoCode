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
                            cur_message = 15;
                            text_flipped = 1;
                            text_location = 3;
                            activate_dialog();
                            break;
                        
                        case 2:
                            end_dialog();
                            
                            if (instance_exists(obj_barghest2_controller))
                            {
                                with (obj_barghest2_controller)
                                    alarm[1] = room_speed;
                            }
                            
                            break;
                    }
                    
                    break;
                
                case 2:
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 17;
                            text_flipped = 1;
                            text_location = 3;
                            activate_dialog();
                            break;
                        
                        case 2:
                            end_dialog();
                            
                            if (instance_exists(obj_barghest2_controller))
                            {
                                with (obj_barghest2_controller)
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
                            cur_message = 19;
                            text_flipped = 1;
                            text_location = 3;
                            activate_dialog();
                            break;
                        
                        case 2:
                            end_dialog();
                            
                            if (instance_exists(obj_barghest2_controller))
                            {
                                with (obj_barghest2_controller)
                                    alarm[1] = room_speed;
                            }
                            
                            break;
                    }
                    
                    break;
                
                case 4:
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 21;
                            text_flipped = 1;
                            text_location = 3;
                            activate_dialog();
                            break;
                        
                        case 2:
                            next_step = 3;
                            cur_message = 22;
                            text_flipped = 0;
                            text_location = 4;
                            activate_dialog();
                            break;
                        
                        case 3:
                            end_dialog();
                            
                            if (instance_exists(obj_barghest2_controller))
                            {
                                with (obj_barghest2_controller)
                                {
                                    selected_game = obj_barghest_throw_game_special;
                                    alarm[1] = room_speed;
                                }
                            }
                            
                            break;
                    }
                    
                    break;
                
                case 5:
                    switch (next_step)
                    {
                        case 1:
                            end_dialog();
                            text_location = 3;
                            text_flipped = 1;
                            cur_message = 24;
                            next_step = 3;
                            alarm[0] = room_speed;
                            break;
                        
                        case 2:
                            end_dialog();
                            text_location = 3;
                            text_flipped = 1;
                            cur_message = 26;
                            next_step = 3;
                            alarm[0] = room_speed;
                            break;
                        
                        case 3:
                            next_step = 4;
                            cur_message = 27;
                            text_flipped = 0;
                            text_location = 4;
                            activate_dialog();
                            break;
                        
                        case 4:
                            next_step = 5;
                            cur_message = 28;
                            activate_dialog();
                            break;
                        
                        case 5:
                            next_step = 6;
                            cur_message = 29;
                            activate_dialog();
                            break;
                        
                        case 6:
                            end_dialog();
                            text_location = 3;
                            text_flipped = 1;
                            cur_message = 30;
                            next_step = 7;
                            alarm[0] = room_speed;
                            break;
                        
                        case 7:
                            next_step = 8;
                            cur_message = 31;
                            activate_dialog();
                            break;
                        
                        case 8:
                            end_dialog();
                            
                            if (instance_exists(obj_barghest2_controller))
                            {
                                with (obj_barghest2_controller)
                                {
                                    selected_game = obj_barghest_throw_game_special;
                                    alarm[1] = room_speed;
                                }
                            }
                            
                            break;
                    }
                    
                    break;
            }
        }
    }
}
