event_inherited();
depth = -1;
image_alpha = 0;
image_speed = 0;
talk_distance = 10;
cur_message = 1;

if (instance_exists(obj_lore))
{
    with (obj_lore)
        instance_destroy();
}

alarm[0] = room_speed * 2;
