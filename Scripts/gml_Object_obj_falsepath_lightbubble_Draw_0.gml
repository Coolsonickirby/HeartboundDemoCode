if (global.darkening_active == 1)
{
    if (surface_exists(global.shadow_surface))
    {
        surface_set_target(global.shadow_surface);
        draw_clear_alpha(c_black, 0);
        draw_set_color(c_black);
        draw_set_alpha(shadow_level);
        draw_rectangle(0, 0, room_width, room_height, 0);
        draw_set_alpha(1);
        var players_exist = 0;
        
        if (instance_exists(obj_player_parent))
            players_exist = 1;
        
        var followers_exist = 0;
        
        if (instance_exists(obj_follower_parent))
            followers_exist = 1;
        
        var lightbulbs_exist = 0;
        
        if (instance_exists(obj_lightbulb_parent))
            lightbulbs_exist = 1;
        
        for (var xx = 3; xx > 0; xx--)
        {
            if (players_exist == 1)
            {
                with (obj_player_parent)
                {
                    range_left = (x - light_base_width - (light_step_width * xx)) + light_offset_x + random_range(-1, 1);
                    range_right = x + light_base_width + (light_step_width * xx) + light_offset_x + random_range(-1, 1);
                    range_top = (y - (light_base_width * 0.5) - (light_step_width * 0.5 * xx)) + light_offset_y + random_range(-1, 1);
                    range_bottom = y + (light_base_width * 0.5) + (light_step_width * 0.5 * xx) + light_offset_y + random_range(-1, 1);
                    gpu_set_blendmode(bm_subtract);
                    draw_ellipse_color(range_left, range_top, range_right, range_bottom, c_black, c_black, false);
                    draw_set_alpha(obj_falsepath_lightbubble.shadow_level * (light_base_shadow + (light_step_shadow * xx)));
                    gpu_set_blendmode(bm_normal);
                    draw_ellipse_color(range_left, range_top, range_right, range_bottom, c_black, c_black, false);
                    draw_set_alpha(1);
                }
            }
            
            if (followers_exist == 1)
            {
                with (obj_follower_parent)
                {
                    range_left = (x - light_base_width - (light_step_width * xx)) + light_offset_x + random_range(-1, 1);
                    range_right = x + light_base_width + (light_step_width * xx) + light_offset_x + random_range(-1, 1);
                    range_top = (y - (light_base_width * 0.5) - (light_step_width * 0.5 * xx)) + light_offset_y + random_range(-1, 1);
                    range_bottom = y + (light_base_width * 0.5) + (light_step_width * 0.5 * xx) + light_offset_y + random_range(-1, 1);
                    gpu_set_blendmode(bm_subtract);
                    draw_ellipse_color(range_left, range_top, range_right, range_bottom, c_black, c_black, false);
                    draw_set_alpha(obj_falsepath_lightbubble.shadow_level * (light_base_shadow + (light_step_shadow * xx)));
                    gpu_set_blendmode(bm_normal);
                    draw_ellipse_color(range_left, range_top, range_right, range_bottom, c_black, c_black, false);
                    draw_set_alpha(1);
                }
            }
            
            if (lightbulbs_exist == 1)
            {
                with (obj_lightbulb_parent)
                {
                    range_left = (x - light_base_width - (light_step_width * xx)) + light_offset_x + random_range(-1, 1);
                    range_right = x + light_base_width + (light_step_width * xx) + light_offset_x + random_range(-1, 1);
                    range_top = (y - (light_base_width * 0.5) - (light_step_width * 0.5 * xx)) + light_offset_y + random_range(-1, 1);
                    range_bottom = y + (light_base_width * 0.5) + (light_step_width * 0.5 * xx) + light_offset_y + random_range(-1, 1);
                    gpu_set_blendmode(bm_subtract);
                    draw_ellipse_color(range_left, range_top, range_right, range_bottom, c_black, c_black, false);
                    draw_set_alpha(obj_falsepath_lightbubble.shadow_level * (light_base_shadow + (light_step_shadow * xx)));
                    gpu_set_blendmode(bm_normal);
                    draw_ellipse_color(range_left, range_top, range_right, range_bottom, c_black, c_black, false);
                    draw_set_alpha(1);
                }
            }
        }
        
        if (lightbulbs_exist == 1)
        {
            with (obj_lightbulb_parent)
            {
                gpu_set_blendmode(bm_subtract);
                draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_black, 1);
                gpu_set_blendmode(bm_normal);
            }
        }
        
        if (instance_exists(obj_blocker_parent))
        {
            with (obj_blocker_parent)
            {
                if (glow_active == 1)
                {
                    gpu_set_blendmode(bm_subtract);
                    draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_black, 1);
                    gpu_set_blendmode(bm_normal);
                }
            }
        }
        
        if (followers_exist == 1)
        {
            with (obj_follower_parent)
            {
                gpu_set_blendmode(bm_subtract);
                draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_black, 1);
                gpu_set_blendmode(bm_normal);
                draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_black, obj_falsepath_lightbubble.shadow_level * light_base_shadow);
            }
        }
        
        if (players_exist == 1)
        {
            with (obj_player_parent)
            {
                gpu_set_blendmode(bm_subtract);
                draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_black, 1);
                gpu_set_blendmode(bm_normal);
                draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_black, obj_falsepath_lightbubble.shadow_level * light_base_shadow);
            }
        }
        
        gpu_set_blendmode(bm_normal);
        surface_reset_target();
        draw_surface(global.shadow_surface, 0, 0);
    }
    else
    {
        global.shadow_surface = surface_create(room_width, room_height);
    }
}
