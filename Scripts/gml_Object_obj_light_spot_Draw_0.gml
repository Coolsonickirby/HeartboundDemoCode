if (surface_exists(global.shadow_surface))
{
    surface_set_target(global.shadow_surface);
    draw_clear_alpha(c_black, 0);
    draw_set_color(c_black);
    draw_set_alpha(shadow_level);
    draw_rectangle(0, 0, room_width, room_height, 0);
    draw_set_alpha(1);
    range_left_3 = (x - 300) + random_range(-1, 1);
    range_right_3 = x + 300 + random_range(-1, 1);
    range_top_3 = (y - 150) + random_range(-1, 1);
    range_bottom_3 = y + 150 + random_range(-1, 1);
    gpu_set_blendmode(bm_subtract);
    draw_ellipse_color(range_left_3, range_top_3, range_right_3, range_bottom_3, c_black, c_black, false);
    draw_set_alpha(shadow_level * 0.75);
    gpu_set_blendmode(bm_normal);
    draw_ellipse_color(range_left_3, range_top_3, range_right_3, range_bottom_3, image_blend, image_blend, false);
    draw_set_alpha(1);
    range_left_2 = (x - 270) + random_range(-1, 1);
    range_right_2 = x + 270 + random_range(-1, 1);
    range_top_2 = (y - 120) + random_range(-1, 1);
    range_bottom_2 = y + 120 + random_range(-1, 1);
    gpu_set_blendmode(bm_subtract);
    draw_ellipse_color(range_left_2, range_top_2, range_right_2, range_bottom_2, c_black, c_black, false);
    draw_set_alpha(shadow_level * 0.5);
    gpu_set_blendmode(bm_normal);
    draw_ellipse_color(range_left_2, range_top_2, range_right_2, range_bottom_2, image_blend, image_blend, false);
    draw_set_alpha(1);
    range_left_1 = (x - 240) + random_range(-1, 1);
    range_right_1 = x + 240 + random_range(-1, 1);
    range_top_1 = (y - 90) + random_range(-1, 1);
    range_bottom_1 = y + 90 + random_range(-1, 1);
    gpu_set_blendmode(bm_subtract);
    draw_ellipse_color(range_left_1, range_top_1, range_right_1, range_bottom_1, c_black, c_black, false);
    draw_set_alpha(shadow_level * 0.25);
    gpu_set_blendmode(bm_normal);
    draw_ellipse_color(range_left_1, range_top_1, range_right_1, range_bottom_1, image_blend, image_blend, false);
    draw_set_alpha(1);
    
    if (instance_exists(obj_blocker_parent))
    {
        with (obj_blocker_parent)
        {
            if (shadow_active == 1)
            {
                if (shadow_mask != 0)
                    mask_index = shadow_mask;
                
                var range_left = obj_light_spot.x - 100;
                var range_right = obj_light_spot.x + 100;
                var range_top = obj_light_spot.y - 50;
                var range_bottom = obj_light_spot.y + 50;
                
                if (collision_ellipse(range_left, range_top, range_right, range_bottom, id, true, false))
                {
                    light_x = obj_light_spot.x;
                    light_y = obj_light_spot.y + ((obj_light_spot.y - obj_light_spot.y) * 0.5);
                    
                    while (trace1 == true)
                    {
                        direct1 = point_direction(light_x, light_y, x, y) + direct1Mod;
                        point1X = light_x + lengthdir_x(light_radius, direct1);
                        point1Y = light_y + lengthdir_y(light_radius, direct1);
                        direct1Mod += 0.1;
                        
                        if (!collision_line(light_x, light_y, point1X, point1Y, id, true, false))
                            trace1 = false;
                    }
                    
                    while (trace1 == false && trace3 == true)
                    {
                        point3X = light_x + lengthdir_x(mover1, direct1 - 0.1);
                        point3Y = light_y + lengthdir_y(mover1, direct1 - 0.1);
                        mover1 += 0.5;
                        
                        if (collision_circle(point3X, point3Y, 1, id, true, false))
                            trace3 = false;
                        
                        if (mover1 > light_radius)
                            trace3 = false;
                    }
                    
                    while (trace2 == true)
                    {
                        direct2 = point_direction(light_x, light_y, x, y) + direct2Mod;
                        point2X = light_x + lengthdir_x(light_radius, direct2);
                        point2Y = light_y + lengthdir_y(light_radius, direct2);
                        direct2Mod -= 0.1;
                        
                        if (!collision_line(light_x, light_y, point2X, point2Y, id, true, false))
                            trace2 = false;
                    }
                    
                    while (trace2 == false && trace4 == true)
                    {
                        point4X = light_x + lengthdir_x(mover2, direct2 + 0.1);
                        point4Y = light_y + lengthdir_y(mover2, direct2 + 0.1);
                        mover2 += 0.5;
                        
                        if (collision_circle(point4X, point4Y, 1, id, true, false))
                            trace4 = false;
                        
                        if (mover2 > light_radius)
                            trace4 = false;
                    }
                    
                    draw1X = point1X + random_range(-1, 1);
                    draw2X = point2X + random_range(-1, 1);
                    draw3X = point3X;
                    draw4X = point4X;
                    draw1Y = point1Y + random_range(-1, 1);
                    draw2Y = point2Y + random_range(-1, 1);
                    draw3Y = point3Y;
                    draw4Y = point4Y;
                    gpu_set_blendmode(bm_subtract);
                    draw_triangle_color(draw1X, draw1Y, draw2X, draw2Y, draw3X, draw3Y, 0, 0, 0, 0);
                    draw_triangle_color(draw2X, draw2Y, draw3X, draw3Y, draw4X, draw4Y, 0, 0, 0, 0);
                    gpu_set_blendmode(bm_normal);
                    draw_set_alpha(obj_light_spot.shadow_level);
                    draw_triangle_color(draw1X, draw1Y, draw2X, draw2Y, draw3X, draw3Y, 0, 0, 0, 0);
                    draw_triangle_color(draw2X, draw2Y, draw3X, draw3Y, draw4X, draw4Y, 0, 0, 0, 0);
                    draw_set_alpha(1);
                    gpu_set_blendmode(bm_subtract);
                    draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_black, 1);
                    gpu_set_blendmode(bm_normal);
                    draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, obj_light_spot.shadow_level);
                }
                else if (distance_to_object(obj_player_parent) <= 150)
                {
                    gpu_set_blendmode(bm_subtract);
                    draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_black, 1);
                    gpu_set_blendmode(bm_normal);
                    draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, obj_light_spot.shadow_level);
                }
                
                if (light_x_old != light_x || light_y_old != light_y)
                {
                    trace1 = true;
                    trace2 = true;
                    trace3 = true;
                    trace4 = true;
                    mover1 = 0;
                    mover2 = 0;
                    direct1Mod = 0;
                    direct2Mod = 0;
                    light_x_old = light_x;
                    light_y_old = light_y;
                }
                
                if (shadow_mask != 0)
                    mask_index = sprite_index;
            }
        }
    }
    
    gpu_set_blendmode(bm_normal);
    surface_reset_target();
    draw_surface(global.shadow_surface, 0, 0);
}
else
{
    global.shadow_surface = surface_create(room_width, room_height);
    surface_set_target(global.shadow_surface);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}
