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
                text_complete = 0;
                
                switch (dialog_step)
                {
                    case 1:
                        switch (next_step)
                        {
                            case 1:
                                question_answered = 0;
                                question_asked = 0;
                                question_true = 1;
                                end_dialog();
                                break;
                            
                            case 2:
                                next_step = 3;
                                cur_message = 5;
                                question_true = 0;
                                question_asked = 0;
                                question_answered = 0;
                                activate_dialog();
                                
                                with (obj_player_parent)
                                    scr_clothing_change(1);
                                
                                break;
                            
                            case 3:
                                dialog_step = 2;
                                cur_message = 3;
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
                        
                        break;
                }
            }
        }
    }
}
