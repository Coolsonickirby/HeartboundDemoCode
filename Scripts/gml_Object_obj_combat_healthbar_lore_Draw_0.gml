if (global.player_hp_cur < (global.player_hp_max * 0.3))
    draw_sprite_ext(asset_get_index("spr_combat_health_" + global.player_clothing + "_lore"), 3, bbox_left + 2, bbox_top + 8, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
else if (global.player_hp_cur < (global.player_hp_max * 0.5))
    draw_sprite_ext(asset_get_index("spr_combat_health_" + global.player_clothing + "_lore"), 2, bbox_left + 2, bbox_top + 8, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
else if (global.player_hp_cur < (global.player_hp_max * 0.8))
    draw_sprite_ext(asset_get_index("spr_combat_health_" + global.player_clothing + "_lore"), 1, bbox_left + 2, bbox_top + 8, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
else if (global.player_hp_cur >= (global.player_hp_max * 0.8))
    draw_sprite_ext(asset_get_index("spr_combat_health_" + global.player_clothing + "_lore"), 0, bbox_left + 2, bbox_top + 8, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

draw_sprite_ext(spr_combat_health_bar, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_black, image_alpha);
var spr_width = sprite_get_width(spr_combat_health_bar) - 1;
var spr_height = sprite_get_height(spr_combat_health_bar);
var new_width = ceil((global.player_hp_cur / global.player_hp_max) * spr_width);
draw_sprite_part_ext(spr_combat_health_bar, image_index, 0, 0, new_width, spr_height, round(x - (spr_width / 2)), round(y - (spr_height / 2)) + 1, 1, 1, health_color, 1);
draw_sprite_ext(spr_combat_health_border_lore, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
