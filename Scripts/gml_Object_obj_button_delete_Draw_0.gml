draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed_colour(x, (y - global.font_offset) + global.glyph_offset, string_hash_to_newline(button_text), 0, sprite_width, 1, 1, image_angle, image_blend, image_blend, image_blend, image_blend, image_alpha);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
