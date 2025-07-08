var xx = 0;

for (xx = 0; xx <= old_music; xx++)
{
    if (audio_is_playing(music_old[xx]))
    {
        if (audio_sound_get_gain(music_old[xx]) <= 0)
            audio_stop_sound(music_old[xx]);
        
        alarm[1] = room_speed * 0.5;
    }
}
