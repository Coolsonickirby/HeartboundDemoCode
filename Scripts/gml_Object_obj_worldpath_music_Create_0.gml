music_new[0] = snd_insidewind;
music_new[1] = snd_outsidewind;
music_new[2] = snd_music_portal_tower;
music_new[3] = snd_music_portal_animus;
music_new[4] = snd_music_portal_fire;
music_new[5] = snd_music_portal_frost;
music_vol[0] = 0;
music_vol[1] = 0;
music_vol[2] = 0;
music_vol[3] = 0;
music_vol[4] = 0;
music_vol[5] = 0;
music_old[0] = snd_music_baron_2;
new_music = array_length(music_new) - 1;
old_music = array_length(music_old) - 1;
vol_music = array_length(music_vol) - 1;
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
