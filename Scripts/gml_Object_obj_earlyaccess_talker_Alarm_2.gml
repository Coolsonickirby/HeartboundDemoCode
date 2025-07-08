fader = instance_create_depth(x, y, 0, obj_fade);

with (fader)
{
    next_room = utility_thanks;
    player_x = 310;
    player_y = 35;
    player_object = obj_lore;
    next_color = 16777215;
    fadein_timer = 0.02;
    fadeout_timer = 0.02;
    fadepause_timer = 0.5;
    fadeout_amount = 0.01;
    fadein_amount = 0.05;
    fade_out = true;
    alarm[1] = room_speed * fadeout_timer;
}

scr_sound_play(snd_whitefade, 1, 1, false);
audio_sound_gain(snd_music_baron_1, 0, 1000);
