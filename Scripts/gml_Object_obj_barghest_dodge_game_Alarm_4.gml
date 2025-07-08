cur_target[1] = dodge_position;
cur_target[2] = irandom_range(1, 3);

while (cur_target[1] == cur_target[2])
    cur_target[2] = irandom_range(1, 3);

scr_sound_play(snd_barghest_dodge_charge, 0.2, random_range(0.95, 1), true);

with (obj_barghest_combat_parent)
{
    for (xx = 1; xx <= 2; xx++)
    {
        if (obj_barghest_dodge_game.cur_target[xx] == enemy_section)
        {
            enemy_attacking = 1;
            sprite_index = asset_get_index("spr_barghest_enemy_" + string(enemy_section) + "_charge");
            image_speed = 0.3;
        }
    }
}

alarm[0] = attack_charge_delay;
