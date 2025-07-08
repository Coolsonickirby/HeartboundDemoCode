if (global.storyline_array[story_index] == 0)
    cur_message = 15;
else if (global.storyline_array[story_index] == 1)
    cur_message = clamp(cur_message, min_message, max_message);

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
            
            if (global.storyline_array[story_index] == 0)
            {
                switch (next_step)
                {
                    case 1:
                        end_dialog();
                        break;
                }
            }
            else
            {
                switch (next_step)
                {
                    case 1:
                        if (cur_message <= max_message)
                        {
                            cur_talks++;
                            cur_message++;
                            global.storyline_array[dialog_index] = cur_talks;
                            cur_message = clamp(cur_message, min_message, max_message);
                        }
                        
                        end_dialog();
                        
                        if (global.storyline_array[dialog_index] == 3)
                            instance_destroy();
                        
                        break;
                }
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
