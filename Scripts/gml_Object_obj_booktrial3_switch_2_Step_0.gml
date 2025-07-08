if (activated != last_activated)
{
    last_activated = activated;
    
    if (activated == 0)
    {
        sprite_index = light_off;
        scr_sound_play(sound_off, 0.2, 1, false);
        
        with (obj_booktrial3_emitter_2)
            sprite_index = light_off;
        
        with (obj_booktrial3_laser_1b)
            instance_destroy();
        
        with (obj_booktrial3_laser_2b)
            instance_destroy();
        
        with (obj_booktrial3_laser_3b)
            instance_destroy();
        
        with (obj_booktrial3_laser_4b)
            instance_destroy();
        
        with (obj_booktrial3_laser_5b)
            instance_destroy();
        
        with (obj_booktrial3_laser_6b)
            instance_destroy();
        
        with (obj_booktrial3_laser_7b)
            instance_destroy();
        
        with (obj_booktrial3_laser_8b)
            instance_destroy();
        
        with (obj_booktrial3_laser_9b)
            instance_destroy();
    }
    else if (activated == 1)
    {
        sprite_index = light_on;
        scr_sound_play(sound_on, 0.2, 1, false);
        
        with (obj_booktrial3_emitter_2)
            sprite_index = light_on;
        
        instance_create_depth(387, 195, 0, obj_booktrial3_laser_1b);
        instance_create_depth(534, 171, 0, obj_booktrial3_laser_2b);
        instance_create_depth(111, 130, 0, obj_booktrial3_laser_3b);
        
        if (obj_booktrial3_mirror_2.laser_cast == 1)
        {
            instance_create_depth(106, 171, 0, obj_booktrial3_laser_4b);
            instance_create_depth(100, 195, 0, obj_booktrial3_laser_5b);
        }
        else
        {
            instance_create_depth(106, 267, 0, obj_booktrial3_laser_6b);
            instance_create_depth(112, 290, 0, obj_booktrial3_laser_7b);
            
            if (obj_booktrial3_mirror_6.laser_cast == 1)
            {
                instance_create_depth(534, 267, 0, obj_booktrial3_laser_8b);
                instance_create_depth(539, 195, 0, obj_booktrial3_laser_9b);
            }
        }
    }
}
