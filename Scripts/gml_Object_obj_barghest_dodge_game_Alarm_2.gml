audio_stop_sound(snd_barghest_dodge_blast);
audio_stop_sound(snd_global_slash);

if (damage_taken == 0)
{
    with (obj_barghest_dodge_lore_parent)
    {
        if (obj_barghest_dodge_game.dodge_position == draw_position)
            instance_create_depth(x, y, 0, obj_barghest_dodge_weapon);
    }
}

with (obj_barghest_combat_parent)
{
    image_speed = 0.2;
    enemy_attacking = 0;
    sprite_index = asset_get_index("spr_barghest_enemy_" + string(enemy_section));
}

if (instance_exists(obj_barghest_dodge_lore_parent))
{
    with (obj_barghest_dodge_lore_parent)
        instance_destroy();
}

obj_combat_parent.activate_game = 1;

if (instance_exists(obj_lore_combat))
{
    with (obj_lore_combat)
        image_alpha = 1;
}

instance_destroy();
