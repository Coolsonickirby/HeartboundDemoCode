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
            if ((global.accept_key && text_complete == 1) || question_answered == 1)
            {
                question_answered = 0;
                text_complete = 0;
                
                switch (next_step)
                {
                    case 1:
                        if (global.storyline_array[story_index] == 0)
                            scr_sound_play(snd_garbage_pickup, 0.15, 0.8, false);
                        
                        image_index = 1;
                        global.storyline_array[story_index] = 1;
                        cur_message = 10;
                        end_dialog();
                        break;
                    
                    case 2:
                        question_asked = 0;
                        end_dialog();
                        break;
                }
            }
        }
    }
}
