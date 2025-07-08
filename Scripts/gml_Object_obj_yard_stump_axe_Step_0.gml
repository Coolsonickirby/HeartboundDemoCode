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
                
                if (global.storyline_array[story_index] == 0)
                {
                    switch (next_step)
                    {
                        case 1:
                            image_index = 1;
                            scr_sound_play(snd_axe_pickup, 0.15, 1, false);
                            
                            if (global.storyline_array[7] == 1)
                            {
                                next_step = 3;
                                cur_message = 34;
                                activate_dialog();
                            }
                            else
                            {
                                global.storyline_array[story_index] = 1;
                                cur_message = 35;
                                end_dialog();
                            }
                            
                            break;
                        
                        case 2:
                            question_asked = 0;
                            end_dialog();
                            break;
                        
                        case 3:
                            global.storyline_array[story_index] = 1;
                            cur_message = 35;
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
