instance_create_depth(320, obj_view.y - 35, 0, obj_barghest_fire_fireball);

with (obj_barghest_combat_parent)
{
    if (enemy_section == 2)
    {
        sprite_index = spr_barghest_enemy_2;
        image_speed = 0.15;
    }
}
