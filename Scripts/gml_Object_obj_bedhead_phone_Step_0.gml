if (talking_state == 0)
{
    if (global.player_direction == 4)
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
                            cur_message = 101;
                            activate_dialog();
                            break;
                        
                        case 2:
                            switch (global.storyline_array[258])
                            {
                                case 0:
                                    dialog_step = 3;
                                    cur_message = 102;
                                    break;
                            }
                            
                            next_step = 1;
                            activate_dialog();
                            break;
                    }
                    
                    break;
                
                case 2:
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 501;
                            activate_dialog();
                            break;
                        
                        case 2:
                            end_dialog();
                            dialog_step = 1;
                            cur_message = 100;
                            break;
                    }
                    
                    break;
                
                case 3:
                    switch (next_step)
                    {
                        case 1:
                            next_step = 1;
                            dialog_step = 2;
                            cur_message = 500;
                            activate_dialog();
                            break;
                    }
                    
                    break;
            }
        }
    }
}
