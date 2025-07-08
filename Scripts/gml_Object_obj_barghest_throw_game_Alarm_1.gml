if (instance_exists(obj_barghest_combat_parent))
{
    with (obj_barghest_combat_parent)
    {
        if (enemy_section == 2)
        {
            sprite_index = asset_get_index("spr_barghest_enemy_" + string(enemy_section) + "_attack");
            scr_screenshake(4, 0.5, 0);
            scr_damage_target(3, obj_combat_player_health_parent, obj_lore_combat.x, obj_lore_combat.y);
            audio_stop_sound(snd_barghest_dodge_charge);
            scr_sound_play(snd_barghest_dodge_blast, 0.3, 1, false);
        }
    }
}

alarm[2] = room_speed * 0.5;
