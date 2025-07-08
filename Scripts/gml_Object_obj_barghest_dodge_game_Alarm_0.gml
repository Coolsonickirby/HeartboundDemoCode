attack_total += 1;
audio_stop_sound(snd_barghest_dodge_charge);

for (xx = 1; xx <= 2; xx++)
{
    if (cur_target[xx] == 1 || cur_target[xx] == 3)
        scr_sound_play(snd_global_slash, 0.1, random_range(0.95, 1.05), false);
    else
        scr_sound_play(snd_barghest_dodge_blast, 0.3, random_range(0.95, 1), false);
}

with (obj_barghest_combat_parent)
{
    for (xx = 1; xx <= 2; xx++)
    {
        if (obj_barghest_dodge_game.cur_target[xx] == enemy_section)
        {
            enemy_attacking = 1;
            sprite_index = asset_get_index("spr_barghest_enemy_" + string(enemy_section) + "_attack");
            image_speed = 0.3;
        }
    }
}

if (attack_total < attack_number)
    alarm[1] = attack_reset_delay;
else
    alarm[2] = room_speed * 0.5;
