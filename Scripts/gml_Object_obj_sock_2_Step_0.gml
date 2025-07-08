if (instance_exists(obj_player_parent))
{
    if (collision_rectangle(obj_player_parent.collide_left_x, obj_player_parent.collide_top_y, obj_player_parent.collide_right_x, obj_player_parent.collide_bottom_y, id, true, false))
    {
        if (global.conv_talking == 0)
        {
            if (last_activated == 0)
            {
                last_activated = 1;
                activate_dialog();
            }
        }
    }
    else
    {
        last_activated = 0;
    }
}

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
                    global.storyline_array[74] = 1;
                    global.storyline_array[79] += 1;
                    instance_destroy();
                    break;
            }
        }
    }
}
