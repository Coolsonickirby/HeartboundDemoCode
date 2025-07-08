switch (global.storyline_array[story_index])
{
    case 0:
        switch (global.storyline_array[food_index])
        {
            case 0:
                conv_question = 1;
                cur_message = 1;
                break;
            
            case 1:
                conv_question = 1;
                cur_message = 2;
                break;
            
            case 2:
                conv_question = 1;
                cur_message = 1;
                break;
        }
        
        break;
    
    case 1:
        conv_question = 0;
        cur_message = 10;
        break;
    
    case 2:
        conv_question = 0;
        cur_message = 12;
        break;
    
    case 3:
        conv_question = 0;
        cur_message = 16;
        break;
}

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
                    switch (global.storyline_array[baron_index])
                    {
                        case 1:
                            switch (next_step)
                            {
                                case 1:
                                    scr_sound_play(snd_garbage_garbage, 0.15, 0.8, false);
                                    image_index = 1;
                                    next_step = 3;
                                    cur_message = 3;
                                    activate_dialog();
                                    break;
                                
                                case 2:
                                    next_step = 10;
                                    cur_message = 17;
                                    activate_dialog();
                                    break;
                                
                                case 3:
                                    next_step = 4;
                                    cur_message = 4;
                                    activate_dialog();
                                    break;
                                
                                case 4:
                                    next_step = 5;
                                    cur_message = 5;
                                    activate_dialog();
                                    break;
                                
                                case 5:
                                    next_step = 6;
                                    cur_message = 6;
                                    activate_dialog();
                                    break;
                                
                                case 6:
                                    next_step = 7;
                                    cur_message = 7;
                                    activate_dialog();
                                    break;
                                
                                case 7:
                                    next_step = 8;
                                    cur_message = 8;
                                    activate_dialog();
                                    break;
                                
                                case 8:
                                    next_step = 9;
                                    cur_message = 9;
                                    activate_dialog();
                                    break;
                                
                                case 9:
                                    global.storyline_array[story_index] = 1;
                                    cur_message = 10;
                                    end_dialog();
                                    break;
                                
                                case 10:
                                    question_asked = 0;
                                    end_dialog();
                                    break;
                            }
                            
                            break;
                        
                        case 2:
                            switch (global.storyline_array[food_index])
                            {
                                case 0:
                                    switch (next_step)
                                    {
                                        case 1:
                                            scr_sound_play(snd_garbage_garbage, 0.15, 0.8, false);
                                            image_index = 1;
                                            next_step = 3;
                                            cur_message = 11;
                                            activate_dialog();
                                            break;
                                        
                                        case 2:
                                            next_step = 4;
                                            cur_message = 17;
                                            activate_dialog();
                                            break;
                                        
                                        case 3:
                                            global.storyline_array[story_index] = 2;
                                            cur_message = 12;
                                            end_dialog();
                                            break;
                                        
                                        case 4:
                                            question_asked = 0;
                                            end_dialog();
                                            break;
                                    }
                                    
                                    break;
                                
                                case 1:
                                    switch (next_step)
                                    {
                                        case 1:
                                            scr_sound_play(snd_garbage_garbage, 0.15, 0.8, false);
                                            image_index = 1;
                                            next_step = 3;
                                            cur_message = 11;
                                            activate_dialog();
                                            break;
                                        
                                        case 2:
                                            scr_sound_play(snd_dogfood_garbage, 0.15, 0.8, false);
                                            next_step = 4;
                                            cur_message = 13;
                                            activate_dialog();
                                            break;
                                        
                                        case 3:
                                            global.storyline_array[story_index] = 2;
                                            cur_message = 12;
                                            end_dialog();
                                            break;
                                        
                                        case 4:
                                            next_step = 5;
                                            cur_message = 14;
                                            activate_dialog();
                                            break;
                                        
                                        case 5:
                                            next_step = 6;
                                            cur_message = 15;
                                            activate_dialog();
                                            break;
                                        
                                        case 6:
                                            global.storyline_array[107] += 1;
                                            global.storyline_array[story_index] = 3;
                                            global.storyline_array[food_index] = 2;
                                            cur_message = 16;
                                            end_dialog();
                                            break;
                                    }
                                    
                                    break;
                            }
                            
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
