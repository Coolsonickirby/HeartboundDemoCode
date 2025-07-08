if (talking_state == 0)
{
    scr_talk();
}
else
{
    if (conv_question == 1 && question_asked == 0)
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
                
                if (global.storyline_array[30] == 0)
                {
                    switch (next_step)
                    {
                        case 1:
                            end_dialog();
                            break;
                    }
                }
                else if (global.storyline_array[31] == 0)
                {
                    switch (next_step)
                    {
                        case 1:
                            if (!instance_exists(obj_fade_dream))
                            {
                                with (instance_create_depth(x, y, 0, obj_fade_dream))
                                {
                                    fade_out = true;
                                    alarm[1] = room_speed * fadeout_timer;
                                }
                            }
                            
                            end_dialog();
                            break;
                        
                        case 2:
                            question_asked = 0;
                            end_dialog();
                            break;
                    }
                }
                else
                {
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
