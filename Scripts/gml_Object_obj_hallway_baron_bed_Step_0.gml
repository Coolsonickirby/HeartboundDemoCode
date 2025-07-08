if (dialog_finished == 0)
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
                        sprite_index = spr_baron_left_walk;
                        speed = global.player_speed_cur * 3;
                        image_speed = 0.15;
                        direction = 180;
                        anim_step = 1;
                        dialog_finished = 1;
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

if (anim_step == 1)
{
    if (x <= 128)
    {
        x = 128;
        anim_step = 2;
        sprite_index = spr_baron_down_walk;
        direction = 270;
    }
}
else if (anim_step == 2)
{
    if (instance_exists(obj_hallway_door_bedroom))
    {
        if (y >= (obj_hallway_door_bedroom.y - 10))
        {
            y = obj_hallway_door_bedroom.y - 10;
            anim_step = 0;
            global.storyline_array[30] = 1;
            global.storyline_array[7] = 0;
            instance_destroy();
        }
    }
}
