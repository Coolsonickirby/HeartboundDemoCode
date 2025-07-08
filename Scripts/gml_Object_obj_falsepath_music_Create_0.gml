music_old[0] = snd_rain;
music_old[1] = snd_insidewind;
music_old[2] = snd_thunder;
old_music = array_length(music_old) - 1;
footstep_volume = 0.1;
var xx = 0;

for (xx = 0; xx <= old_music; xx++)
{
    if (audio_is_playing(music_old[xx]))
        audio_sound_gain(music_old[xx], 0, 250);
}

alarm[1] = room_speed * 0.5;
