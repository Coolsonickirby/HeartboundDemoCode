switch (global.storyline_array[44])
{
    case 0:
        cur_message = 24;
        break;
    
    case 1:
        if (global.storyline_array[108] >= 3)
            cur_message = 26;
        else
            cur_message = 27;
        
        break;
    
    case 2:
        if (global.storyline_array[108] >= 3)
        {
            cur_message = 34;
        }
        else
        {
            switch (global.storyline_array[43])
            {
                case 0:
                    if (global.storyline_array[108] >= 3)
                    {
                        cur_message = 26;
                        break;
                    }
                    else
                    {
                        cur_message = 27;
                        break;
                    }
                
                case 1:
                    if (global.storyline_array[108] >= 3)
                    {
                        cur_message = 34;
                        break;
                    }
                    else
                    {
                        cur_message = 35;
                        break;
                    }
                    
                    break;
            }
        }
        
        break;
}

if (talking_state == 0)
{
    scr_talk();
}
else if (global.current_talker == id)
{
    if (options_state == 0)
    {
        if (global.accept_key && text_complete == 1)
        {
            text_complete = 0;
            
            switch (global.storyline_array[44])
            {
                case 0:
                    switch (global.storyline_array[43])
                    {
                        case 0:
                            switch (next_step)
                            {
                                case 1:
                                    text_location = 0;
                                    cur_message = 25;
                                    next_step = 2;
                                    activate_dialog();
                                    break;
                                
                                case 2:
                                    text_location = 0;
                                    end_dialog();
                                    
                                    if (global.storyline_array[44] == 0)
                                    {
                                        global.storyline_array[44] = 1;
                                        global.storyline_array[108] += 1;
                                    }
                                    
                                    break;
                            }
                            
                            break;
                        
                        case 1:
                            switch (next_step)
                            {
                                case 1:
                                    text_location = 0;
                                    cur_message = 32;
                                    next_step = 2;
                                    activate_dialog();
                                    break;
                                
                                case 2:
                                    text_location = 0;
                                    cur_message = 33;
                                    next_step = 3;
                                    activate_dialog();
                                    break;
                                
                                case 3:
                                    text_location = 0;
                                    end_dialog();
                                    
                                    if (global.storyline_array[44] == 0)
                                    {
                                        global.storyline_array[44] = 2;
                                        global.storyline_array[45] = 1;
                                        global.storyline_array[108] += 1;
                                    }
                                    
                                    break;
                            }
                            
                            break;
                    }
                    
                    break;
                
                case 1:
                    switch (next_step)
                    {
                        case 1:
                            end_dialog();
                            break;
                    }
                    
                    break;
                
                case 2:
                    switch (next_step)
                    {
                        case 1:
                            end_dialog();
                            break;
                    }
                    
                    break;
            }
        }
    }
}
