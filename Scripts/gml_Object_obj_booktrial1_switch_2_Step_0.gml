if (activated != last_activated)
{
    last_activated = activated;
    
    if (activated == 0)
    {
        sprite_index = light_off;
        scr_sound_play(sound_off, 0.2, 1, false);
        obj_booktrial1_mirror_2.push_vertical_flag = 1;
    }
    else if (activated == 1)
    {
        sprite_index = light_on;
        scr_sound_play(sound_on, 0.2, 1, false);
        obj_booktrial1_mirror_2.push_vertical_flag = 0;
    }
}

if (activated == 1)
{
    if (!instance_exists(obj_booktrial1_laser_1b))
        instance_create_depth(464, 225, 0, obj_booktrial1_laser_1b);
    
    if (instance_exists(obj_booktrial1_mirror_2))
    {
        if (obj_booktrial1_mirror_2.laser_cast == 1)
        {
            if (!instance_exists(obj_booktrial1_laser_2b))
                instance_create_depth(459, 202, 0, obj_booktrial1_laser_2b);
        }
    }
}
