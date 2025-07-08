event_inherited();
activated = global.storyline_array[14];
talk_distance = 30;
image_speed = 0;
image_index = 0;
depth = -133;
sprite_off = spr_livingroom_tv_1;
sprite_on = spr_livingroom_tv_2;

if (global.storyline_array[25] == 0)
{
    if (activated == 1)
    {
        if (sprite_index != sprite_on)
        {
            image_speed = 0.25;
            sprite_index = sprite_on;
        }
    }
}

if (global.storyline_array[25] == 2)
    instance_destroy();
