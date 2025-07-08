audio_stop_sound(snd_barghest_dodge_blast);
audio_stop_sound(snd_global_slash);

with (obj_barghest_combat_parent)
{
    image_speed = 0.15;
    enemy_attacking = 0;
    sprite_index = asset_get_index("spr_barghest_enemy_" + string(enemy_section));
}

if (damage_taken == 0)
{
    with (obj_barghest_dodge_lore_parent)
    {
        if (obj_barghest_dodge_game.dodge_position == draw_position)
            instance_create_depth(x, y, 0, obj_barghest_dodge_weapon);
    }
}

damage_taken = 0;
alarm[4] = 1;
cur_target[1] = 0;
cur_target[2] = 0;
