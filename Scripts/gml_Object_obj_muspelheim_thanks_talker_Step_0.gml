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
                    cur_message = 2;
                    activate_dialog();
                    break;
                
                case 2:
                    next_step = 3;
                    cur_message = 3;
                    activate_dialog();
                    break;
                
                case 3:
                    end_dialog();
                    next_step = 0;
                    cur_message = 4;
                    text_location = 5;
                    text_border = 0;
                    text_skip = 0;
                    text_fade = 1;
                    text_timer = room_speed;
                    text_timer_type = 2;
                    alarm[1] = room_speed * 3;
                    break;
            }
        }
    }
}
