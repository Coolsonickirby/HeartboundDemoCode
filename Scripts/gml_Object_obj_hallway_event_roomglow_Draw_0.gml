blend_hue = color_get_hue(effect_blend);
blend_sat = color_get_saturation(effect_blend);
blend_val = color_get_value(effect_blend);
blend_val += 3;

if (blend_val > 250)
    blend_val = 0;

effect_blend = make_color_hsv(blend_hue, blend_sat, blend_val);
gpu_set_blendmode_ext(9, bm_one);
draw_rectangle_color(0, 0, room_width, room_height, effect_blend, effect_blend, effect_blend, effect_blend, false);
gpu_set_blendmode(bm_normal);
