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
            
            if (global.storyline_array[25] == 1)
            {
                switch (next_step)
                {
                    case 1:
                        next_step = 2;
                        cur_message = 9;
                        activate_dialog();
                        break;
                    
                    case 2:
                        end_dialog();
                        instance_destroy();
                        break;
                }
            }
            else if (global.storyline_array[story_index] == 0)
            {
                switch (next_step)
                {
                    case 1:
                        image_speed = 0.5;
                        scr_sound_play(snd_home_doorsqueak, 0.5, 0.8, false);
                        end_dialog();
                        global.player_frozen = 1;
                        break;
                }
            }
            else
            {
                switch (next_step)
                {
                    case 1:
                        next_step = 2;
                        cur_message = 5;
                        activate_dialog();
                        break;
                    
                    case 2:
                        end_dialog();
                        instance_destroy();
                        break;
                }
            }
        }
    }
}

if (activated == 0)
{
    if (instance_exists(obj_player_parent))
    {
        if (collision_rectangle(obj_player_parent.collide_left_x, obj_player_parent.collide_top_y, obj_player_parent.collide_right_x, obj_player_parent.collide_bottom_y, id, true, false))
        {
            activated = 1;
            
            if (global.storyline_array[25] == 0)
            {
                activate_dialog();
            }
            else
            {
                global.player_frozen = 1;
                global.storyline_array[story_index2] = 1;
                image_speed = 0.5;
            }
        }
    }
}
