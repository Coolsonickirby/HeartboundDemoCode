with (instance_create_depth(x, y, 0, obj_fade))
{
    next_room = utility_earlyaccess;
    next_color = 16777215;
    fadein_timer = 0.02;
    fadeout_timer = 0.02;
    fadepause_timer = 8;
    fadeout_amount = 0.05;
    fadein_amount = 0.01;
    fade_out = true;
    alarm[1] = room_speed * fadeout_timer;
}

audio_sound_gain(snd_outsidewind, 0, 1000);
scr_sound_play(snd_bookbind_fade, 0, 1, false);
audio_sound_gain(snd_bookbind_fade, 0.2, 1000);
alarm[10] = room_speed * 5;
