draw_self();
gpu_set_fog(true, glow_color, 0, 0);
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, glow_alpha);
gpu_set_fog(false, glow_color, 0, 0);
