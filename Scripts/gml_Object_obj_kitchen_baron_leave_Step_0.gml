if (anim_step == 1)
{
    if (instance_exists(obj_kitchen_door_livingroom))
    {
        if (y >= 251)
        {
            y = 251;
            anim_step = 2;
            sprite_index = spr_baron_left_walk;
            direction = 180;
        }
    }
}
else if (anim_step == 2)
{
    if (instance_exists(obj_kitchen_door_livingroom))
    {
        if (x <= 320)
        {
            x = 320;
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
        if (y >= (obj_kitchen_door_livingroom.y - 10))
        {
            y = obj_kitchen_door_livingroom.y - 10;
            anim_step = 0;
            global.player_frozen = 0;
            instance_destroy();
        }
    }
}
