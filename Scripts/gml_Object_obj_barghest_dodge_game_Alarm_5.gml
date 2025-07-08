audio_stop_sound(snd_barghest_dodge_blast);
audio_stop_sound(snd_global_slash);

with (obj_barghest_combat_parent)
{
    image_speed = 0.15;
    enemy_attacking = 0;
    sprite_index = asset_get_index("spr_barghest_enemy_" + string(enemy_section));
}

instance_destroy();
