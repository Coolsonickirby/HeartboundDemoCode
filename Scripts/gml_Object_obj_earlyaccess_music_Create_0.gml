music_new[0] = snd_music_baron_1;
music_vol[0] = 0.2;
music_old[0] = snd_outsidewind;
music_old[1] = snd_music_binder_weird;
new_music = array_length(music_new) - 1;
old_music = array_length(music_old) - 1;
effect_new[0] = snd_thunder;
effect_vol[0] = 0;
var xx = 0;

for (xx = 0; xx <= new_music; xx++)
{
    if (!audio_is_playing(music_new[xx]))
    {
        scr_sound_play(music_new[xx], 0, 1, true);
        audio_sound_gain(music_new[xx], music_vol[xx], 2000);
    }
}

xx = 0;

for (xx = 0; xx <= old_music; xx++)
{
    if (audio_is_playing(music_old[xx]))
        audio_sound_gain(music_old[xx], 0, 250);
}

alarm[0] = room_speed * 0.5;
