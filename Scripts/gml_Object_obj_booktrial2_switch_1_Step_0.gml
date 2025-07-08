if (activated != last_activated)
{
    last_activated = activated;
    
    if (activated == 0)
    {
        sprite_index = light_off;
        scr_sound_play(sound_off, 0.2, 1, false);
        obj_booktrial2_mirror_1.mirror_rotation = 0;
        
        with (obj_booktrial2_laser_2a)
            instance_destroy();
        
        with (obj_booktrial2_laser_3a)
            instance_destroy();
        
        with (obj_booktrial2_laser_5a)
            instance_destroy();
        
        instance_create_depth(208, 199, 0, obj_booktrial2_laser_4a);
    }
    else if (activated == 1)
    {
        sprite_index = light_on;
        scr_sound_play(sound_on, 0.2, 1, false);
        obj_booktrial2_mirror_1.mirror_rotation = 1;
        
        with (obj_booktrial2_laser_4a)
            instance_destroy();
        
        instance_create_depth(208, 180, 0, obj_booktrial2_laser_2a);
        
        if (obj_booktrial2_mirror_2.mirror_rotation == 0)
            instance_create_depth(213, 135, 0, obj_booktrial2_laser_3a);
        else
            instance_create_depth(203, 135, 0, obj_booktrial2_laser_5a);
    }
}
