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
                    cur_message = 89;
                    next_step = 2;
                    activate_dialog();
                    break;
                
                case 2:
                    cur_message = 90;
                    next_step = 3;
                    activate_dialog();
                    break;
                
                case 3:
                    cur_message = 88;
                    end_dialog();
                    break;
            }
        }
    }
}
