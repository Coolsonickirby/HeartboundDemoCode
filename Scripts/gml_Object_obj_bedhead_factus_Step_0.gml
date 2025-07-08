if (talking_state == 0)
{
    if (global.player_direction == 2)
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
                    cur_message = 13;
                    activate_dialog();
                    break;
                
                case 2:
                    end_dialog();
                    mod_message += 1;
                    
                    if (mod_message >= mod_max)
                        mod_message = 0;
                    
                    cur_message = message_base + mod_message;
                    break;
            }
        }
    }
}
