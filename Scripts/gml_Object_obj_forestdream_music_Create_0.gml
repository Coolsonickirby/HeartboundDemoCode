music_old[0] = snd_rain;
music_old[1] = snd_stormrain;
music_old[2] = snd_outsidewind;
old_music = array_length(music_old) - 1;
var xx = 0;

for (xx = 0; xx <= old_music; xx++)
{
    if (audio_is_playing(music_old[xx]))
        audio_sound_gain(music_old[xx], 0, 250);
}

alarm[1] = room_speed * 0.5;
