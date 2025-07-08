if (watch_finished == 1)
{
    draw_x = camera_get_view_x(view_camera[view_current]) + (sprite_width * 0.6);
    draw_y = ((camera_get_view_y(view_camera[view_current]) + (sprite_height * 0.6)) - watch_move_max) + watch_move_cur;
}

if (global.darkening_active == 1)
{
    draw_sprite_ext(sprite_index, clock_base, draw_x, draw_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    
    if (global.storyline_array[288] == 0)
    {
        draw_sprite_ext(spr_global_hands_broken, image_index, draw_x, draw_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    else
    {
        if (global.storyline_array[289] == 0)
        {
            minute_angle = 48;
            hour_angle = -273.5;
        }
        else if (room == darkworld_timeroom)
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
        
        draw_sprite_ext(spr_global_minutehand, 0, draw_x, draw_y, image_xscale, image_yscale, minute_angle, image_blend, image_alpha);
        draw_sprite_ext(spr_global_hourhand, 0, draw_x, draw_y, image_xscale, image_yscale, hour_angle, image_blend, image_alpha);
    }
    
    draw_sprite_ext(spr_global_watchpin, clock_gears, draw_x, draw_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
