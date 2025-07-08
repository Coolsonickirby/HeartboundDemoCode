switch (global.storyline_array[54])
{
    case 1:
        if (global.storyline_array[107] < 2)
            cur_message = 55;
        else
            cur_message = 56;
        
        break;
    
    case 2:
        cur_message = 57;
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
            
            switch (global.storyline_array[54])
            {
                case 0:
                    switch (next_step)
                    {
                        case 1:
                            cur_message = 54;
                            next_step = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            if (global.storyline_array[54] == 0)
                            {
                                global.storyline_array[54] = 1;
                                global.storyline_array[108] += 1;
                            }
                            
                            end_dialog();
                            break;
                    }
                    
                    break;
                
                case 1:
                    switch (next_step)
                    {
                        case 1:
                            if (cur_message == 56)
                                global.storyline_array[54] = 2;
                            
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
