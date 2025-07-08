if (global.storyline_array[108] < 3)
    cur_message = 43;
else
    cur_message = 42;

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
            
            switch (next_step)
            {
                case 1:
                    global.storyline_array[48] = 1;
                    var story_iterator = 0;
                    var story_counter = 0;
                    
                    for (story_iterator = 0; story_iterator < 7; story_iterator++)
                        story_counter += global.storyline_array[46 + story_iterator];
                    
                    if (story_counter == 7)
                    {
                        if (global.storyline_array[53] == 0)
                        {
                            global.storyline_array[53] = 1;
                            global.storyline_array[108] += 1;
                            text_location = 1;
                            cur_message = 52;
                            next_step = 2;
                            activate_dialog();
                        }
                        else
                        {
                            end_dialog();
                        }
                    }
                    else
                    {
                        end_dialog();
                    }
                    
                    break;
                
                case 2:
                    text_location = 0;
                    end_dialog();
                    break;
            }
        }
    }
}
