player_position = obj_player_parent.collide_top_y;

if (alarm[0] == -1)
{
    var snd_frequency = ((player_position - clamp_top) / clamp_range) * 50;
    snd_frequency = clamp(snd_frequency, 30, 50);
    alarm[0] = snd_frequency;
}

if (audio_is_playing(snd_index))
{
    var snd_volume = (clamp_bottom - player_position) / clamp_range;
    snd_volume = clamp(snd_volume, 0.05, 0.3);
    audio_sound_gain(snd_index, snd_volume, 0);
    var snd_pitch = ((player_position - clamp_top) / clamp_range) * 1.5;
    snd_pitch = clamp(snd_pitch, 1, 1.5);
    audio_sound_pitch(snd_index, snd_pitch);
}
