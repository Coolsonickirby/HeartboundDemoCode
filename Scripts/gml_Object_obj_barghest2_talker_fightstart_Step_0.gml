if (global.current_talker == id)
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
                    instance_create_depth(x, y, 0, obj_barghest2_controller);
                    
                    with (obj_barghest2_lightbubble)
                        instance_destroy();
                    
                    instance_destroy();
                    break;
            }
        }
    }
    else if (text_complete == 1)
    {
        text_complete = 0;
    }
}
