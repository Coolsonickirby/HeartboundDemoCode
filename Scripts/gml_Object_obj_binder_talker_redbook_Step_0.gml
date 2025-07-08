if (global.storyline_array[55] == 1)
    cur_message = 71;

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
            
            switch (global.storyline_array[55])
            {
                case 0:
                    switch (next_step)
                    {
                        case 1:
                            cur_message = 70;
                            next_step = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            global.storyline_array[55] = 1;
                            global.storyline_array[108] += 1;
                            end_dialog();
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
            }
        }
    }
}
