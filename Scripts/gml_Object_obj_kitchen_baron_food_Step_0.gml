if (anim_step == 0)
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
    global.player_frozen = 1;
    
    if (instance_exists(obj_kitchen_dogbowl))
    {
        if (y <= (obj_kitchen_dogbowl.y - 37))
        {
            y = obj_kitchen_dogbowl.y - 37;
            anim_step = 2;
            sprite_index = spr_baron_right_walk;
            direction = 0;
        }
    }
}
else if (anim_step == 2)
{
    global.player_frozen = 1;
    
    if (instance_exists(obj_kitchen_dogbowl))
    {
        if (x >= (obj_kitchen_dogbowl.x + 20))
        {
            x = obj_kitchen_dogbowl.x + 20;
            anim_step = 3;
            sprite_index = spr_baron_down_walk;
            direction = 270;
        }
    }
}
else if (anim_step == 3)
{
    if (instance_exists(obj_kitchen_dogbowl))
    {
        if (y >= (obj_kitchen_dogbowl.y - 26))
        {
            y = obj_kitchen_dogbowl.y - 26;
            anim_step = 0;
            sprite_index = spr_baron_left_sit;
            direction = 270;
            speed = 0;
            image_speed = 0.12;
            cur_message = 30;
            activate_dialog();
        }
    }
}
else if (global.storyline_array[story_index] == 0)
{
    cur_message = 31;
}
else
{
    cur_message = 32;
}
