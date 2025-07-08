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
                    text_location = 3;
                    next_step = 3;
                    cur_message = 3;
                    activate_dialog();
                    break;
                
                case 3:
                    text_location = 6;
                    next_step = 4;
                    cur_message = 4;
                    activate_dialog();
                    break;
                
                case 4:
                    next_step = 5;
                    cur_message = 5;
                    activate_dialog();
                    break;
                
                case 5:
                    next_step = 6;
                    cur_message = 6;
                    activate_dialog();
                    break;
                
                case 6:
                    text_location = 0;
                    next_step = 7;
                    cur_message = 7;
                    activate_dialog();
                    break;
                
                case 7:
                    alarm[1] = room_speed * 2;
                    end_dialog();
                    break;
            }
        }
    }
}

y = y_anchor + (sin(move_counter * y_freq) * dist_max);
move_counter += 1;
