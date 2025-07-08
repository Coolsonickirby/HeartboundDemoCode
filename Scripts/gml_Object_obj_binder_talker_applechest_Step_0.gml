if (talking_state == 0)
{
    scr_talk();
}
else
{
    if (question_true == 1 && question_asked == 0)
    {
        question_asked = 1;
        activate_dialog_options(2, 1, 2, 0, 0);
    }
    
    if (global.current_talker == id)
    {
        if (options_state == 0)
        {
            if ((global.accept_key && text_complete == 1) || question_answered == 1 || text_timer_bypass == 1)
            {
                question_answered = 0;
                text_complete = 0;
                
                switch (global.storyline_array[41])
                {
                    case 0:
                        switch (next_step)
                        {
                            case 1:
                                text_location = 1;
                                cur_message = 17;
                                next_step = 2;
                                activate_dialog();
                                break;
                            
                            case 2:
                                global.storyline_array[41] = 1;
                                text_location = 2;
                                question_true = 1;
                                cur_message = 18;
                                end_dialog();
                                break;
                        }
                        
                        break;
                    
                    case 1:
                        switch (next_step)
                        {
                            case 1:
                                next_step = 3;
                                cur_message = 19;
                                activate_dialog();
                                break;
                            
                            case 2:
                                next_step = 4;
                                cur_message = 21;
                                activate_dialog();
                                break;
                            
                            case 3:
                                global.storyline_array[108] += 1;
                                global.storyline_array[41] = 2;
                                cur_message = 20;
                                end_dialog();
                                break;
                            
                            case 4:
                                global.storyline_array[107] += 1;
                                global.storyline_array[108] += 1;
                                global.storyline_array[41] = 3;
                                cur_message = 22;
                                end_dialog();
                                break;
                        }
                        
                        break;
                    
                    case 2:
                        switch (next_step)
                        {
                            case 1:
                                end_dialog();
                                break;
                        }
                    
                    case 3:
                        switch (next_step)
                        {
                            case 1:
                                end_dialog();
                                break;
                        }
                }
            }
        }
    }
}
