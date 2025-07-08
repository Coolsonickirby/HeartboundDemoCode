weapon_damage = 1;

if (global.storyline_array[23] == 1)
{
    sprite_index = spr_weapon_axe;
    weapon_damage = 2;
}

depth = -6005;
image_speed = 0;
image_index = 0;
image_angle = irandom(360);
angle_modifier = choose(-10, 10);
target_enemy = 0;

with (obj_barghest_combat_parent)
{
    if (enemy_section == 2)
        other.target_enemy = id;
}

direction = point_direction(x, y, target_enemy.x, target_enemy.y);
speed = 8;
scr_sound_play(snd_combat_throw, 0.2, random_range(0.95, 1), false);
