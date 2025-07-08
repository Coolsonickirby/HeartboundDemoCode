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
                
                if (global.storyline_array[25] == 0)
                {
                    if (global.storyline_array[19] == 0)
                    {
                        switch (next_step)
                        {
                            case 1:
                                global.storyline_array[19] = 1;
                                image_index = 1;
                                global.storyline_array[108] += 1;
                                cur_message = 7;
                                end_dialog();
                                
                                if (global.storyline_array[17] == 0)
                                {
                                    global.storyline_array[17] = 1;
                                    global.player_frozen = 1;
                                    instance_create_depth(x, y, 0, obj_home_talker_power);
                                }
                                
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
