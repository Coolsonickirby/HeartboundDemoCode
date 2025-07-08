with (instance_create_depth(x, y, 0, obj_fade))
{
    next_room = global_worldfall;
    next_color = 0;
    fadein_timer = 0.02;
    fadeout_timer = 0.02;
    fadepause_timer = 10;
    fadeout_amount = 0.08;
    fadein_amount = 0.05;
    fade_out = true;
    alarm[1] = room_speed * fadeout_timer;
}

scr_sound_play(snd_darkworld_portal, 0.25, 1, true);
audio_sound_gain(snd_darkworld_portal, 0, 8000);
audio_sound_gain(snd_outsidewind, 0, 1000);
audio_sound_gain(snd_insidewind, 0, 1000);
audio_sound_gain(snd_music_portal_tower, 0, 1000);
audio_sound_gain(snd_music_portal_animus, 0, 1000);
audio_sound_gain(snd_music_portal_fire, 0, 1000);
audio_sound_gain(snd_music_portal_frost, 0, 1000);
