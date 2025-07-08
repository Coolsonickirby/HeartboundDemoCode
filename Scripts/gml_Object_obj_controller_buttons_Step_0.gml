if (talking_state == 1)
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
            if ((global.accept_key && text_complete == 1) || question_answered == 1)
            {
                question_answered = 0;
                text_complete = 0;
                
                switch (next_step)
                {
                    case 1:
                        question_asked = 0;
                        end_dialog();
                        selected_button = 1;
                        alarm[0] = 5;
                        break;
                    
                    case 2:
                        next_step = 3;
                        cur_message = 2;
                        question_true = 0;
                        question_asked = 0;
                        activate_dialog();
                        
                        with (obj_button_continue)
                            x = 320;
                        
                        with (obj_button_delete)
                            instance_destroy();
                        
                        clear_game();
                        load_game();
                        break;
                    
                    case 3:
                        cur_message = 1;
                        question_true = 1;
                        end_dialog();
                        selected_button = 0;
                        alarm[0] = 5;
                        break;
                }
            }
        }
    }
}
