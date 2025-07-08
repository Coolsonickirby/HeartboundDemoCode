if (sound_played == 0)
{
    sound_played = 1;
    scr_sound_play(snd_darkworld_lighton, 0.1, 1, false);
}

change_value++;

if (instance_exists(obj_barghest2_roomdark))
{
    var dark_value = change_value / 100;
    dark_value = clamp(dark_value, 0, 1);
    obj_barghest2_roomdark.room_fade = dark_value;
}

if (instance_exists(obj_player_parent))
{
    if (instance_exists(obj_barghest2_lightbubble))
    {
        var light_size = (change_value / 100) * 750;
        light_size = clamp(light_size, 25, 2000);
        obj_player_parent.light_base_width = light_size;
        
        if (light_size >= 2000)
        {
            with (obj_barghest2_lightbubble)
                instance_destroy();
        }
    }
}

if (change_value < 100)
    alarm[1] = 1;
else
    alarm[2] = room_speed * 0.5;
