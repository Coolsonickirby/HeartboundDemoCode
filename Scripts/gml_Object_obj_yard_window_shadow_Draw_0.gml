draw_sprite_ext(spr_yard_window_shadow_back, 0, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (global.storyline_array[25] == 1)
{
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_purple, image_alpha);
    gpu_set_blendmode(bm_normal);
}

draw_sprite_ext(spr_yard_window_shadow_front, 0, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
