if (activated != global.storyline_array[story_index])
{
    if (activated == 0)
    {
        global.storyline_array[story_index] = 0;
        
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
        global.storyline_array[story_index] = 1;
        
        if (global.player_frozen == 0)
        {
            image_index = 1;
            scr_sound_play(sound_on, 0.125, 0.5, false);
        }
        
        if (global.storyline_array[25] == 0)
        {
            if (instance_exists(obj_roomdark_parent))
            {
                with (obj_roomdark_parent)
                    instance_destroy();
            }
            
            if (global.storyline_array[17] == 0)
            {
                gizmo_active = 0;
                global.storyline_array[17] = 1;
                global.player_frozen = 1;
                instance_create_depth(x, y, 0, obj_home_talker_power);
            }
        }
        else if (global.storyline_array[27] == 0)
        {
            global.storyline_array[27] = 1;
            global.player_frozen = 1;
            instance_create_depth(x, y, 0, obj_home_talker_power_spooky);
        }
    }
}

if (instance_exists(obj_home_talker_power))
    alarm[0] = 5;

if (instance_exists(obj_home_talker_power_spooky))
    alarm[0] = 5;
