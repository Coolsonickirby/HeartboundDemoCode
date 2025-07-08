if (allow_talking == 1)
{
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
                    
                    switch (next_step)
                    {
                        case 1:
                            global.storyline_array[80] = 1;
                            next_step = 3;
                            cur_message = 2;
                            question_true = 0;
                            question_asked = 0;
                            question_answered = 0;
                            activate_dialog();
                            break;
                        
                        case 2:
                            global.storyline_array[80] = 2;
                            next_step = 3;
                            cur_message = 3;
                            question_true = 0;
                            question_asked = 0;
                            question_answered = 0;
                            activate_dialog();
                            break;
                        
                        case 3:
                            allow_talking = 0;
                            end_dialog();
                            global.player_frozen = 1;
                            
                            if (global.steam_achievements == 1)
                                steam_set_achievement("HOMETOWN_CLAWS");
                            
                            break;
                    }
                }
            }
        }
    }
}

if (allow_talking == 0)
{
    image_alpha -= 0.02;
    
    if (image_alpha <= 0)
    {
        global.player_frozen = 0;
        instance_destroy();
    }
}
