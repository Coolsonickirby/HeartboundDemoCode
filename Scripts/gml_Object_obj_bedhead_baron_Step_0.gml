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
                    next_step = 2;
                    cur_message = 6;
                    activate_dialog();
                    break;
                
                case 2:
                    cur_message = 5;
                    end_dialog();
                    break;
            }
        }
    }
}
