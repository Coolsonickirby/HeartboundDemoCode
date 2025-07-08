switch (global.storyline_array[56])
{
    case 0:
        cur_message = 91;
        break;
    
    case 1:
        cur_message = 96;
        break;
}

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
            
            switch (global.storyline_array[56])
            {
                case 0:
                    switch (next_step)
                    {
                        case 1:
                            cur_message = 92;
                            next_step = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            cur_message = 93;
                            next_step = 3;
                            activate_dialog();
                            break;
                        
                        case 3:
                            cur_message = 94;
                            next_step = 4;
                            activate_dialog();
                            break;
                        
                        case 4:
                            cur_message = 95;
                            next_step = 5;
                            activate_dialog();
                            break;
                        
                        case 5:
                            cur_message = 96;
                            global.storyline_array[108] += 1;
                            global.storyline_array[56] = 1;
                            
                            with (obj_binder_figurine)
                                instance_destroy();
                            
                            end_dialog();
                            break;
                    }
                    
                    break;
                
                case 1:
                    switch (next_step)
                    {
                        case 1:
                            end_dialog();
                            break;
                    }
                    
                    break;
            }
        }
    }
}
