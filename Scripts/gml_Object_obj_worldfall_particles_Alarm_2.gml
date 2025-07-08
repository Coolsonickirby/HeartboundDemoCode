if (alpha_fade < 1)
{
    alpha_fade += alpha_step;
    part_type_alpha3(effect_fall, 0, alpha_fade, 0);
    alarm[2] = 1;
}
else
{
    alpha_fade = 1;
    
    if (instance_exists(obj_worldfall_talker))
    {
        with (obj_worldfall_talker)
            alarm[0] = room_speed;
    }
}
