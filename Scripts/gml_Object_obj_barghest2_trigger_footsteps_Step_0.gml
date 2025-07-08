if (instance_exists(obj_player_parent))
    player_position = obj_player_parent.collide_top_y;

var snd_volume = ((player_position - clamp_top) / clamp_range) * snd_base_volume;
snd_volume = clamp(snd_volume, 0, snd_base_volume);
obj_music_parent.footstep_volume = snd_volume;
