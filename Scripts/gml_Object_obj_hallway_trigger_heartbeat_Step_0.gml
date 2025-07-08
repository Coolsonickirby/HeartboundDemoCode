clamp_left = bbox_left;
clamp_right = bbox_right;
clamp_range = clamp_right - clamp_left;
player_position = obj_player_parent.collide_left_x;

if (alarm[0] == -1)
{
    var snd_frequency = ((player_position - clamp_left) / clamp_range) * 50;
    snd_frequency = clamp(snd_frequency, 30, 50);
    alarm[0] = snd_frequency;
}

if (audio_is_playing(snd_index))
{
    var snd_volume = (clamp_right - player_position) / clamp_range;
    snd_volume = clamp(snd_volume, 0.1, 0.3);
    audio_sound_gain(snd_index, snd_volume, 0);
    var snd_pitch = ((player_position - clamp_left) / clamp_range) * 2;
    snd_pitch = clamp(snd_pitch, 1, 1.5);
    audio_sound_pitch(snd_index, snd_pitch);
}

if (instance_exists(obj_player_parent))
{
    if (collision_rectangle(obj_player_parent.collide_left_x, obj_player_parent.collide_top_y, obj_player_parent.collide_right_x, obj_player_parent.collide_bottom_y, id, true, false))
    {
        var speed_change = ((player_position - clamp_left) / clamp_range) * global.player_speed_nrm;
        speed_change = clamp(speed_change, 0.3, global.player_speed_nrm);
        global.player_speed_cur = speed_change;
    }
}

if (global.storyline_array[story_index] == 1)
    instance_destroy();
