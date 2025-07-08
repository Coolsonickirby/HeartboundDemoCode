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
                    end_dialog();
                    
                    if (cur_message == 6)
                        global.storyline_array[408] = 1;
                    
                    break;
            }
        }
    }
}
