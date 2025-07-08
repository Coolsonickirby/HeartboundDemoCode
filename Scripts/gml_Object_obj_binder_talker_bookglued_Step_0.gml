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
                    if (global.storyline_array[42] == 0)
                    {
                        global.storyline_array[108] += 1;
                        global.storyline_array[42] = 1;
                    }
                    
                    end_dialog();
                    break;
            }
        }
    }
}
