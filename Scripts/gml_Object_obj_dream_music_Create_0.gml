music_new[0] = snd_music_baron_1;
music_vol[0] = 0.2;
music_fad[0] = 2000;
music_old[0] = snd_rain;
music_old[1] = snd_insidewind;
new_music = array_length(music_new) - 1;
old_music = array_length(music_old) - 1;
vol_music = array_length(music_vol) - 1;
effect_new[0] = snd_thunder;
effect_vol[0] = 0;
var xx = 0;

for (xx = 0; xx <= new_music; xx++)
{
    if (!audio_is_playing(music_new[xx]))
    {
        scr_sound_play(music_new[xx], 0, 1, true);
        audio_sound_gain(music_new[xx], music_vol[xx], music_fad[xx]);
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
alarm[2] = 1;
