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
                    next_step = 7;
                    cur_message = 7;
                    activate_dialog();
                    break;
                
                case 7:
                    next_step = 8;
                    cur_message = 8;
                    activate_dialog();
                    break;
                
                case 8:
                    alarm[2] = room_speed;
                    end_dialog();
                    break;
            }
        }
    }
}

if (anim_step == 1)
{
    if (y >= 180)
    {
        y = 180;
        anim_step = 0;
        sprite_index = spr_baron_down_sit;
        speed = 0;
        alarm[1] = room_speed;
    }
}
