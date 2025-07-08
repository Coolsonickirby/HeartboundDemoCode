if (activated != global.storyline_array[70])
{
    if (activated == 0)
    {
        global.storyline_array[70] = 0;
        
        if (global.player_frozen == 0)
        {
            image_index = 0;
            scr_sound_play(sound_off, 0.125, 0.5, false);
        }
        
        if (!instance_exists(obj_roomdark_parent))
        {
            with (instance_create_depth(x, y, 0, object_spawn))
                object_color = other.object_color;
        }
    }
    else if (activated == 1)
    {
        global.storyline_array[70] = 1;
        
        if (global.player_frozen == 0)
        {
            image_index = 1;
            scr_sound_play(sound_on, 0.125, 0.5, false);
        }
        
        if (instance_exists(obj_roomdark_parent))
        {
            with (obj_roomdark_parent)
                instance_destroy();
        }
    }
}
