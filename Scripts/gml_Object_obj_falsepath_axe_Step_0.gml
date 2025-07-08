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
                
                switch (next_step)
                {
                    case 1:
                        next_step = 3;
                        cur_message = 4;
                        text_skip = 0;
                        text_fade = 1;
                        text_border = 0;
                        text_location = 1;
                        global.storyline_array[65] = 1;
                        global.storyline_array[23] = 1;
                        activate_dialog();
                        break;
                    
                    case 2:
                        next_step = 5;
                        cur_message = 6;
                        text_skip = 0;
                        text_fade = 1;
                        text_border = 0;
                        text_location = 1;
                        global.storyline_array[65] = 2;
                        activate_dialog();
                        break;
                    
                    case 3:
                        next_step = 4;
                        cur_message = 5;
                        text_location = 9;
                        activate_dialog();
                        break;
                    
                    case 4:
                        end_dialog();
                        instance_destroy();
                        break;
                    
                    case 5:
                        next_step = 6;
                        cur_message = 7;
                        text_location = 9;
                        activate_dialog();
                        break;
                    
                    case 6:
                        end_dialog();
                        instance_destroy();
                        break;
                    
                    case 7:
                        next_step = 8;
                        cur_message = 9;
                        text_location = 9;
                        global.storyline_array[65] = 1;
                        activate_dialog();
                        break;
                    
                    case 8:
                        end_dialog();
                        instance_destroy();
                        break;
                }
            }
        }
    }
}
