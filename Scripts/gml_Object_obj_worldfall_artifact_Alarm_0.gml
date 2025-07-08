if (image_alpha < 1)
{
    image_alpha += 0.05;
    alarm[0] = 1;
}
else if (instance_exists(obj_worldfall_talker))
{
    with (obj_worldfall_talker)
        alarm[0] = room_speed;
}
