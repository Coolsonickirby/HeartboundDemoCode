if (activated != last_activated)
{
    last_activated = activated;
    
    if (activated == 0)
    {
        sprite_index = light_off;
        scr_sound_play(sound_off, 0.2, 1, false);
        
        with (obj_booktrial3_emitter_1)
            sprite_index = light_off;
        
        with (obj_booktrial3_laser_1a)
            instance_destroy();
        
        with (obj_booktrial3_laser_2a)
            instance_destroy();
        
        with (obj_booktrial3_laser_3a)
            instance_destroy();
        
        with (obj_booktrial3_laser_4a)
            instance_destroy();
        
        with (obj_booktrial3_laser_5a)
            instance_destroy();
    }
    else if (activated == 1)
    {
        sprite_index = light_on;
        scr_sound_play(sound_on, 0.2, 1, false);
        
        with (obj_booktrial3_emitter_1)
            sprite_index = light_on;
        
        instance_create_depth(252, 195, 0, obj_booktrial3_laser_1a);
        
        if (obj_booktrial3_mirror_2.laser_cast == 1)
        {
            instance_create_depth(106, 267, 0, obj_booktrial3_laser_2a);
            instance_create_depth(111, 290, 0, obj_booktrial3_laser_3a);
            
            if (obj_booktrial3_mirror_6.laser_cast == 1)
            {
                instance_create_depth(534, 267, 0, obj_booktrial3_laser_4a);
                instance_create_depth(539, 195, 0, obj_booktrial3_laser_5a);
            }
        }
    }
}
