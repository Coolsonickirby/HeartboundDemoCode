switch (global.storyline_array[1])
{
    case 0:
        cur_message = 2;
        break;
    
    case 1:
        cur_message = 3;
        break;
}

if (talking_state == 0)
{
    scr_talk();
}
else if (global.current_talker == id)
{
    if (options_state == 0)
    {
        with (obj_player_parent)
            scr_clothing_change(1);
        
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
}
