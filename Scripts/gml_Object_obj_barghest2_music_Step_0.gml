if (global.player_moving == 1)
{
    if (alarm[2] == -1)
    {
        var random_sound = asset_get_index("snd_darkworld_footstep_" + string(irandom_range(1, 3)));
        scr_sound_play(random_sound, footstep_volume, random_range(0.45, 0.55), false);
        alarm[2] = room_speed * 0.25 * (global.player_speed_nrm / global.player_speed_cur);
    }
}
