if (enemy_section == 1 || enemy_section == 3)
{
    if (sprite_index == asset_get_index("spr_barghest_enemy_" + string(enemy_section) + "_attack"))
    {
        sprite_index = asset_get_index("spr_barghest_enemy_" + string(enemy_section));
        image_speed = 0.2;
    }
}
