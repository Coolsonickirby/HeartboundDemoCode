draw_sprite(sprite_index, clock_base, x, y);

if (global.storyline_array[289] == 0)
{
    minute_angle = 48;
    hour_angle = -273.5;
    draw_sprite_ext(spr_global_minutehand_small, 0, x, y, image_xscale, image_yscale, minute_angle, image_blend, image_alpha);
    draw_sprite_ext(spr_global_hourhand_small, 0, x, y, image_xscale, image_yscale, hour_angle, image_blend, image_alpha);
}
else
{
    if (room == global_bedhead)
    {
        minute_mod -= random_range(6, 10);
        hour_mod += random_range(5, 9);
        minute_angle = minute_base + minute_mod;
        hour_angle = hour_base + hour_mod;
    }
    else
    {
        minute_angle = 90 - (global.storyline_array[91] * 6) - (global.storyline_array[92] * 0.1);
        hour_angle = 90 - (global.storyline_array[90] * 30) - (global.storyline_array[91] * 0.5);
    }
    
    draw_sprite_ext(spr_global_minutehand_small, 0, x, y, image_xscale, image_yscale, minute_angle, image_blend, image_alpha);
    draw_sprite_ext(spr_global_hourhand_small, 0, x, y, image_xscale, image_yscale, hour_angle, image_blend, image_alpha);
}

draw_sprite(spr_global_watchpin_small, clock_gears, x, y);
