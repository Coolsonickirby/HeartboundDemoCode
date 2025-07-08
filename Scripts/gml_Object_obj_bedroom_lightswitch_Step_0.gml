if (activated != global.storyline_array[2])
{
    if (activated == 0)
    {
        global.storyline_array[2] = 0;
        
        if (global.player_frozen == 0)
        {
            image_index = 0;
            scr_sound_play(sound_off, 0.125, 0.5, false);
        }
        
        if (global.storyline_array[3] == 0)
        {
            if (!instance_exists(obj_roomdark_parent))
            {
                with (instance_create_depth(x, y, 0, object_spawn))
                    object_color = other.object_color;
            }
        }
    }
    else if (activated == 1)
    {
        global.storyline_array[2] = 1;
        
        if (global.player_frozen == 0)
        {
            image_index = 1;
            scr_sound_play(sound_on, 0.125, 0.5, false);
        }
        
        if (global.storyline_array[3] == 0)
        {
            if (instance_exists(obj_roomdark_parent))
            {
                with (obj_roomdark_parent)
                    instance_destroy();
            }
        }
    }
    
    if (global.storyline_array[3] == 0)
    {
        if (!instance_exists(obj_bedroom_event_spark))
        {
            global.player_frozen = 1;
            instance_create_depth(x, y + 1, 0, obj_bedroom_event_spark);
        }
    }
}

if (global.storyline_array[3] == 1)
{
    if (!instance_exists(obj_roomdark_parent))
    {
        with (instance_create_depth(x, y, 0, object_spawn))
            object_color = other.object_color;
    }
}

if (global.storyline_array[4] == 1)
{
    sprite_index = spr_home_lightswitch_burnt;
    global.storyline_array[3] = 1;
}
