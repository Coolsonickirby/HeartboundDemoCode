audio_sound_gain(snd_music_shadows_bitter, 0, 1000);

with (instance_create_depth(x, y, 0, obj_fade))
{
    next_room = darkworld_lossdream;
    player_x = 320;
    player_y = 180;
    next_color = 12285846;
    fadein_timer = 0.02;
    fadeout_timer = 0.02;
    fadepause_timer = 0.5;
    fadeout_amount = 0.01;
    fadein_amount = 0.05;
    fade_out = true;
    alarm[1] = room_speed * fadeout_timer;
}

if (global.storyline_array[1] == 0)
{
    if (global.storyline_array[23] == 0)
    {
        if (global.storyline_array[280] == 0)
        {
            if (global.steam_achievements == 1)
                steam_set_achievement("HOMETOWN_BASEBALL");
        }
    }
}
