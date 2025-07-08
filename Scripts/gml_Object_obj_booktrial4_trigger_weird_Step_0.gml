if (instance_exists(obj_player_parent))
    player_position = obj_player_parent.collide_top_y;

if (audio_is_playing(snd_index))
{
    var snd_volume = (abs(clamp_bottom - player_position) / clamp_range) * 0.2;
    snd_volume = clamp(snd_volume, 0, 0.2);
    audio_sound_gain(snd_index, snd_volume, 0);
}
