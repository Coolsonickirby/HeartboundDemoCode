draw_sprite_ext(enemy_sprite, enemy_index, bbox_right - 7, bbox_top + 3, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(spr_combat_health_bar, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_black, image_alpha);
var spr_width = sprite_get_width(spr_combat_health_bar) - 3;
var spr_height = sprite_get_height(spr_combat_health_bar);
var new_width = ceil((global.enemy_hp_cur / global.enemy_hp_max) * spr_width);

if (new_width <= 0)
{
    if (global.enemy_hp_cur > 0)
        new_width = 1;
}

draw_sprite_part_ext(spr_combat_health_bar, image_index, 0, 0, new_width, spr_height, round(x + (spr_width / 2)) + 1, round(y - (spr_height / 2)), -1, 1, health_color, 1);
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
