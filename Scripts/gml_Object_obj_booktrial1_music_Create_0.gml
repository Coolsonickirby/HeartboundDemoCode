music_new[0] = snd_music_binder_booktrial;
music_new[1] = snd_music_binder_gold;
music_new[2] = snd_music_binder_purple;
music_vol[0] = 0.2;
music_vol[1] = 0;
music_vol[2] = 0;
music_old[0] = snd_music_binder_bookhome;
new_music = array_length(music_new) - 1;
old_music = array_length(music_old) - 1;
vol_music = array_length(music_vol) - 1;
var xx = 0;

for (xx = 0; xx <= new_music; xx++)
{
    if (!audio_is_playing(music_new[xx]))
    {
        scr_sound_play(music_new[xx], 0, 1, true);
        audio_sound_gain(music_new[xx], music_vol[xx], 250);
    }
}

xx = 0;

for (xx = 0; xx <= old_music; xx++)
{
    if (audio_is_playing(music_old[xx]))
        audio_sound_gain(music_old[xx], 0, 250);
}

alarm[0] = 5;
alarm[1] = room_speed * 0.5;
