fade_timer -= 1;
blend_hue = color_get_hue(effect_blend);
blend_sat = color_get_saturation(effect_blend);
blend_val = color_get_value(effect_blend);
blend_val -= 3;

if (blend_val < 0)
    blend_val = 0;

effect_blend = make_color_hsv(blend_hue, blend_sat, blend_val);

if (fade_timer != 0)
    alarm[0] = 1;
