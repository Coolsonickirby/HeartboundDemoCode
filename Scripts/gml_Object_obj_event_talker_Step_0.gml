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
                    global.storyline_array[119] = 0;
                    global.storyline_array[120] = 0;
                    global.storyline_array[121] = 0;
                    global.storyline_array[122] = 0;
                    save_location(global_worldpath, 0, 0);
                    save_game();
                    load_game();
                    
                    with (instance_create_depth(x, y, 0, obj_fade))
                    {
                        next_room = global_bedhead;
                        next_color = 0;
                        alpha = 0;
                        fadein_timer = 0.02;
                        fadeout_timer = 0.02;
                        fadepause_timer = 1;
                        fadeout_amount = 0.01;
                        fadein_amount = 0.02;
                        fade_out = true;
                        alarm[1] = 1;
                        global.storyline_array[70] = 0;
                    }
                    
                    break;
            }
        }
    }
}
