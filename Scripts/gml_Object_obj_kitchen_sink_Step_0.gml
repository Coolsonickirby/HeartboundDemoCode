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
                    if (cur_message < max_message)
                    {
                        cur_message++;
                        cur_talks++;
                        global.storyline_array[story_index] = cur_talks;
                        
                        if (cur_talks == 3)
                            global.storyline_array[108] += 1;
                        
                        cur_message = clamp(cur_message, min_message, max_message);
                    }
                    
                    end_dialog();
                    break;
            }
        }
    }
}
