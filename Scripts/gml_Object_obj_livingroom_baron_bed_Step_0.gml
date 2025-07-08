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
                    speed = global.player_speed_cur;
                    direction = 90;
                    anim_step = 1;
                    global.player_frozen = 1;
                    break;
            }
        }
    }
}

if (anim_step == 1)
{
    if (y <= 251)
    {
        y = 251;
        anim_step = 2;
        sprite_index = spr_baron_right_walk;
        direction = 0;
    }
}
else if (anim_step == 2)
{
    if (x >= 434)
    {
        x = 434;
        anim_step = 3;
        sprite_index = spr_baron_up_walk;
        direction = 90;
    }
}
else if (anim_step == 3)
{
    if (instance_exists(obj_livingroom_door_hallway))
    {
        if (y <= (obj_livingroom_door_hallway.y + 10))
        {
            y = obj_livingroom_door_hallway.y + 10;
            anim_step = 0;
            global.storyline_array[30] = 1;
            global.storyline_array[7] = 0;
            global.player_frozen = 0;
            instance_destroy();
        }
    }
}
