var xx = 0;

for (xx = 0; xx <= new_music; xx++)
{
    if (!audio_is_playing(music_new[xx]))
    {
        scr_sound_play(music_new[xx], 0, 1, true);
        audio_sound_gain(music_new[xx], music_vol[xx], music_fad[xx]);
        alarm[0] = 1;
    }
    else
    {
        audio_sound_gain(music_new[xx], music_vol[xx], music_fad[xx]);
    }
}
