if (talking_state == 0)
{
    if (activated == 1)
    {
        if (last_activated == 0)
            activate_dialog();
        
        last_activated = activated;
    }
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
}

if (instance_exists(obj_player_parent))
{
    if (collision_rectangle(obj_player_parent.collide_left_x, obj_player_parent.collide_top_y, obj_player_parent.collide_right_x, obj_player_parent.collide_bottom_y, id, true, false))
    {
        activated = 1;
    }
    else
    {
        activated = 0;
        last_activated = activated;
    }
}
