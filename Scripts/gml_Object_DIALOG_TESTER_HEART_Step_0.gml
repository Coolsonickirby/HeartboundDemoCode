if (talking_state == 0)
{
    scr_talk();
}
else
{
    if (question_true == 1 && question_asked == 0)
    {
        question_asked = 1;
        activate_dialog_options(4, 1, 1, 1, 1);
    }
    
    if (global.current_talker == id)
    {
        if (options_state == 0)
        {
            if ((global.accept_key && text_complete == 1) || question_answered == 1 || text_timer_bypass == 1)
            {
                text_complete = 0;
                
                switch (next_step)
                {
                    case 1:
                        cur_message += 1;
                        
                        if (cur_message > dialog_end)
                        {
                            cur_message = dialog_start;
                            end_dialog();
                            alarm[1] = room_speed * 2;
                        }
                        else
                        {
                            stroll_fliptext();
                            activate_dialog();
                        }
                        
                        break;
                }
            }
        }
    }
}
