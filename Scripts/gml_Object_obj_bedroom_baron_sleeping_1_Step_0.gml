if (global.storyline_array[2] == 0)
{
    text_location = 2;
    cur_message = 4;
}
else
{
    text_location = 1;
    cur_message = 6;
}

if (anim_wait == 0)
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
                
                if (global.storyline_array[2] == 0)
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
                            break;
                    }
                }
                else
                {
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 7;
                            activate_dialog();
                            break;
                        
                        case 2:
                            next_step = 3;
                            cur_message = 8;
                            activate_dialog();
                            break;
                        
                        case 3:
                            next_step = 4;
                            cur_message = 9;
                            activate_dialog();
                            break;
                        
                        case 4:
                            next_step = 5;
                            cur_message = 10;
                            activate_dialog();
                            break;
                        
                        case 5:
                            next_step = 6;
                            cur_message = 11;
                            activate_dialog();
                            break;
                        
                        case 6:
                            next_step = 7;
                            cur_message = 12;
                            activate_dialog();
                            break;
                        
                        case 7:
                            next_step = 8;
                            cur_message = 13;
                            activate_dialog();
                            break;
                        
                        case 8:
                            anim_wait = 2;
                            sprite_index = spr_baron_down_walk;
                            image_speed = 0.1;
                            direction = 270;
                            speed = global.player_speed_cur;
                            next_step = 9;
                            cur_message = 14;
                            activate_dialog();
                            break;
                        
                        case 9:
                            end_dialog();
                            instance_change(obj_baron_follower, true);
                            break;
                    }
                }
            }
        }
        else if (text_complete == 1)
        {
            text_complete = 0;
        }
    }
}

if (anim_wait == 1)
{
    if (instance_exists(obj_bedroom_lore_blastback))
    {
        if (x >= obj_bedroom_lore_blastback.x)
        {
            x = obj_bedroom_lore_blastback.x;
            sprite_index = spr_baron_down_stand;
            image_speed = 0.1;
            anim_wait = 0;
            speed = 0;
            
            with (obj_bedroom_lore_blastback)
            {
                global.player_direction = 4;
                instance_change(obj_lore, true);
            }
        }
    }
}

if (anim_wait == 2)
{
    if (instance_exists(obj_player_parent))
    {
        if (y >= (obj_player_parent.y - 1))
        {
            y = obj_player_parent.y - 1;
            global.storyline_array[7] = 1;
            sprite_index = spr_baron_up_stand;
            anim_wait = 0;
            speed = 0;
        }
    }
}
