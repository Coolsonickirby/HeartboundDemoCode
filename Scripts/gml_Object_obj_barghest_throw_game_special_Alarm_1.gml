if (instance_exists(obj_barghest_combat_parent))
{
    with (obj_barghest_combat_parent)
    {
        if (enemy_section == 2)
        {
            sprite_index = asset_get_index("spr_barghest_enemy_" + string(enemy_section) + "_attack");
            scr_screenshake(4, 3, 0);
            audio_stop_sound(snd_barghest_dodge_charge);
            scr_sound_play(snd_barghest_dodge_blast, 0.3, 1, true);
        }
    }
    
    alarm[5] = room_speed * 0.5;
}

alarm[2] = room_speed * 0.5;
