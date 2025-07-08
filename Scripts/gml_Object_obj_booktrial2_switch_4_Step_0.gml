if (activated != last_activated)
{
    last_activated = activated;
    
    if (activated == 0)
    {
        sprite_index = light_off;
        scr_sound_play(sound_off, 0.2, 1, false);
        obj_booktrial2_mirror_4.mirror_rotation = 0;
        
        with (obj_booktrial2_laser_5b)
            instance_destroy();
        
        if (obj_booktrial2_mirror_3.mirror_rotation == 1)
            instance_create_depth(427, 263, 0, obj_booktrial2_laser_3b);
    }
    else if (activated == 1)
    {
        sprite_index = light_on;
        scr_sound_play(sound_on, 0.2, 1, false);
        obj_booktrial2_mirror_4.mirror_rotation = 1;
        
        with (obj_booktrial2_laser_3b)
            instance_destroy();
        
        if (obj_booktrial2_mirror_3.mirror_rotation == 1)
            instance_create_depth(437, 263, 0, obj_booktrial2_laser_5b);
    }
}
