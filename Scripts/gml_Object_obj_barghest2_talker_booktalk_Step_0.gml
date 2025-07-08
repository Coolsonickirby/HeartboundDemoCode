if (global.current_talker == id)
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
                            end_dialog();
                            text_border = 1;
                            text_fade = 0;
                            text_skip = 1;
                            
                            with (obj_barghest2_lore_booktalk)
                                anim_step = 2;
                            
                            break;
                    }
                    
                    break;
                
                case 2:
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 7;
                            activate_dialog();
                            break;
                        
                        case 2:
                            next_step = 3;
                            cur_message = 8;
                            activate_dialog();
                            break;
                        
                        case 3:
                            next_step = 4;
                            cur_message = 9;
                            activate_dialog();
                            break;
                        
                        case 4:
                            with (obj_barghest2_lore_booktalk)
                                alarm[2] = room_speed;
                            
                            end_dialog();
                            break;
                    }
                    
                    break;
                
                case 3:
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 11;
                            activate_dialog();
                            break;
                        
                        case 2:
                            end_dialog();
                            
                            with (obj_barghest2_tome)
                                alpha_target = 0;
                            
                            with (obj_barghest2_lore_booktalk)
                                alarm[3] = room_speed * 2;
                            
                            instance_destroy();
                            break;
                    }
                    
                    break;
            }
        }
    }
    else if (text_complete == 1)
    {
        text_complete = 0;
    }
}
