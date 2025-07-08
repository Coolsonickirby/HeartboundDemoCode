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
                    if (instance_exists(obj_kitchen_baron_food))
                    {
                        next_step = 2;
                        cur_message = 12;
                        activate_dialog();
                    }
                    else
                    {
                        end_dialog();
                    }
                    
                    break;
                
                case 2:
                    end_dialog();
                    break;
            }
        }
    }
}
