var xx = 0;

for (xx = 0; xx <= new_music; xx++)
{
    if (!audio_is_playing(music_new[xx]))
    {
        if (xx == 0 || xx == 1)
            scr_sound_play(music_new[xx], 0, 1.3, true);
        else
            scr_sound_play(music_new[xx], 0, 1, true);
        
        audio_sound_gain(music_new[xx], music_vol[xx], 2000);
        alarm[0] = 1;
    }
}
