if (global.storyline_array[complete_index] == 0)
{
    if (global.storyline_array[food_index] == 0)
    {
        if (global.storyline_array[trash_index] == 0)
        {
            conv_question = 0;
            cur_message = 13;
        }
        else
        {
            conv_question = 1;
            cur_message = 15;
        }
    }
    else if (global.storyline_array[food_index] == 1)
    {
        if (global.storyline_array[trash_index] == 0)
        {
            conv_question = 1;
            cur_message = 14;
        }
        else
        {
            conv_question = 1;
            cur_message = 16;
        }
    }
}
else if (global.storyline_array[25] != 2)
{
    if (global.storyline_array[complete_index] == 1)
        cur_message = 23;
    else
        cur_message = 27;
}
else if (global.storyline_array[complete_index] == 1)
{
    cur_message = 36;
}
else
{
    cur_message = 37;
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
        
        if (global.storyline_array[food_index] == 0)
        {
            if (global.storyline_array[trash_index] == 1)
                activate_dialog_options(2, 3, 2, 0, 0);
        }
        else if (global.storyline_array[food_index] == 1)
        {
            if (global.storyline_array[trash_index] == 0)
                activate_dialog_options(2, 1, 3, 0, 0);
            else
                activate_dialog_options(2, 1, 2, 0, 0);
        }
    }
    
    if (global.current_talker == id)
    {
        if (options_state == 0)
        {
            if ((global.accept_key && text_complete == 1) || question_answered == 1 || text_timer_bypass == 1)
            {
                question_answered = 0;
                text_complete = 0;
                
                if (global.storyline_array[complete_index] == 0)
                {
                    if (global.storyline_array[food_index] == 0 && global.storyline_array[trash_index] == 0)
                    {
                        switch (next_step)
                        {
                            case 1:
                                end_dialog();
                                break;
                        }
                    }
                    else
                    {
                        switch (next_step)
                        {
                            case 1:
                                image_index = 1;
                                next_step = 4;
                                cur_message = 17;
                                scr_sound_play(snd_dogfood_bowl, 0.15, 0.8, false);
                                activate_dialog();
                                break;
                            
                            case 2:
                                image_index = 2;
                                next_step = 10;
                                cur_message = 24;
                                scr_sound_play(snd_garbage_bowl, 0.15, 0.8, false);
                                activate_dialog();
                                break;
                            
                            case 3:
                                question_asked = 0;
                                end_dialog();
                                break;
                            
                            case 4:
                                next_step = 5;
                                cur_message = 18;
                                activate_dialog();
                                break;
                            
                            case 5:
                                next_step = 6;
                                cur_message = 19;
                                activate_dialog();
                                break;
                            
                            case 6:
                                image_index = 0;
                                next_step = 7;
                                cur_message = 20;
                                activate_dialog();
                                break;
                            
                            case 7:
                                next_step = 8;
                                cur_message = 21;
                                activate_dialog();
                                break;
                            
                            case 8:
                                next_step = 9;
                                cur_message = 22;
                                activate_dialog();
                                break;
                            
                            case 9:
                                global.storyline_array[complete_index] = 1;
                                global.storyline_array[food_index] = 2;
                                end_dialog();
                                
                                if (instance_exists(obj_kitchen_baron_food))
                                {
                                    with (obj_kitchen_baron_food)
                                        instance_change(obj_kitchen_baron_leave, true);
                                }
                                
                                break;
                            
                            case 10:
                                next_step = 11;
                                cur_message = 25;
                                activate_dialog();
                                break;
                            
                            case 11:
                                next_step = 12;
                                cur_message = 26;
                                activate_dialog();
                                break;
                            
                            case 12:
                                global.storyline_array[complete_index] = 2;
                                global.storyline_array[107] += 1;
                                end_dialog();
                                
                                if (instance_exists(obj_kitchen_baron_food))
                                {
                                    with (obj_kitchen_baron_food)
                                        instance_change(obj_kitchen_baron_leave, true);
                                }
                                
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
