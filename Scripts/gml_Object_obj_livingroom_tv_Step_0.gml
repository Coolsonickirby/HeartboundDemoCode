if (activated != global.storyline_array[14])
{
    if (global.storyline_array[25] == 0)
    {
        if (activated == 0)
        {
            image_speed = 0;
            sprite_index = sprite_off;
            global.storyline_array[14] = 0;
            
            if (instance_exists(obj_music_livingroom))
            {
                with (obj_music_livingroom)
                {
                    music_vol[2] = 0;
                    alarm[0] = 1;
                }
            }
        }
        else if (activated == 1)
        {
            image_speed = 0.25;
            sprite_index = sprite_on;
            global.storyline_array[14] = 1;
            
            if (global.storyline_array[17] == 0)
            {
                gizmo_active = 0;
                global.storyline_array[17] = 1;
                global.player_frozen = 1;
                instance_create_depth(x, y, 0, obj_home_talker_power);
            }
            
            if (instance_exists(obj_music_livingroom))
            {
                with (obj_music_livingroom)
                {
                    music_vol[2] = 0.25;
                    alarm[0] = 1;
                }
            }
        }
    }
    else if (activated == 1)
    {
        if (global.storyline_array[27] == 0)
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
