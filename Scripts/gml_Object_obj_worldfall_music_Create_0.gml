music_new[0] = snd_music_falling;
music_vol[0] = 0.3;
music_old[0] = snd_insidewind;
music_old[1] = snd_outsidewind;
music_old[2] = snd_music_portal_tower;
music_old[3] = snd_music_portal_animus;
music_old[4] = snd_music_portal_fire;
music_old[5] = snd_music_portal_frost;
new_music = array_length(music_new) - 1;
old_music = array_length(music_old) - 1;
vol_music = array_length(music_vol) - 1;
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

alarm[0] = 5;
alarm[1] = room_speed * 0.5;
