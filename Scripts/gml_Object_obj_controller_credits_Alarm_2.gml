with (instance_create_depth(x, y, 0, obj_fade_credits))
{
    player_x = 0;
    player_y = 0;
    next_room = menu_main;
    next_color = 0;
    fadein_timer = 0.02;
    fadeout_timer = 0.02;
    fadepause_timer = 1;
    fadeout_amount = 0.05;
    fadein_amount = 0.05;
    fade_out = true;
    alarm[1] = room_speed * fadeout_timer;
}

audio_sound_gain(snd_music_credits, 0, 1000);
