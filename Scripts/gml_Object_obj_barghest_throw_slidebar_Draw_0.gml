draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_set_alpha(0.25);
draw_rectangle_color(x - (sprite_width * 0.5), y - (sprite_height * target_variance), x + (sprite_width * 0.5), y + (sprite_height * target_variance), c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);
draw_rectangle_color(x - (sprite_width * 0.5), y - (sprite_height * target_variance) - 1, x + (sprite_width * 0.5), y - (sprite_height * target_variance), c_white, c_white, c_white, c_white, false);
draw_rectangle_color(x - (sprite_width * 0.5), y + (sprite_height * target_variance), x + (sprite_width * 0.5), y + (sprite_height * target_variance) + 1, c_white, c_white, c_white, c_white, false);
draw_sprite_ext(spr_combat_throw_icon, image_index, x, (y + (sprite_height * 0.5)) - (sprite_height * target_value), 1, 1, image_angle, image_blend, image_alpha);
draw_sprite_ext(spr_barghest_throw_slidebar_border, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
