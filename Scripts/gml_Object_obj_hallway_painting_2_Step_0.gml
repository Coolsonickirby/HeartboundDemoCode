if (image_index == 1)
{
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
                        break;
                }
            }
        }
        else if (text_complete == 1)
        {
            text_complete = 0;
        }
    }
}

if (y > dest_y)
{
    y = dest_y;
    speed = 0;
    image_index = 1;
    scr_sound_play(snd_home_thud_soft, 1, 1, false);
}
