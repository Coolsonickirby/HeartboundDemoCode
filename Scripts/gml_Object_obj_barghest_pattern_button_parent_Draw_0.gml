if (global.control_type == 0)
{
    if (position_set == 1)
    {
        if (button_number != 0)
        {
            if (button_allowed == 1)
            {
                if (collision_circle(mouse_x, mouse_y, 3, id, true, false))
                {
                    gpu_set_fog(true, c_red, 0, 0);
                    draw_sprite_ext(sprite_index, image_index, round(x) - 2, round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
                    draw_sprite_ext(sprite_index, image_index, round(x) + 2, round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
                    draw_sprite_ext(sprite_index, image_index, round(x), round(y) - 2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
                    draw_sprite_ext(sprite_index, image_index, round(x), round(y) + 2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
                    draw_sprite_ext(sprite_index, image_index, round(x) + 1, round(y) + 1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
                    draw_sprite_ext(sprite_index, image_index, round(x) + 1, round(y) - 1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
                    draw_sprite_ext(sprite_index, image_index, round(x) - 1, round(y) + 1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
                    draw_sprite_ext(sprite_index, image_index, round(x) - 1, round(y) - 1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
                    gpu_set_fog(false, c_red, 0, 0);
                    object_selected = 1;
                }
                else
                {
                    object_selected = 0;
                }
            }
        }
    }
}

if (surface_exists(global.arena_surface))
{
    surface_set_target(global.arena_surface);
    draw_clear_alpha(c_black, 0);
    
    if (button_number == 0)
    {
        draw_sprite_ext(sprite_base, image_index, round(x) - global.surface_offset_x, round(y) - global.surface_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        draw_sprite_ext(sprite_index, image_index, round(x) - global.surface_offset_x, round(y) - global.surface_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    else
    {
        draw_sprite_ext(sprite_index, image_index, round(x) - global.surface_offset_x, round(y) - global.surface_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    
    if (button_fail == 1)
    {
        if (button_number == 0)
        {
            draw_sprite_ext(sprite_base, image_index, round(x) - global.surface_offset_x, round(y) - global.surface_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            draw_sprite_ext(sprite_index, image_index, round(x) - global.surface_offset_x, round(y) - global.surface_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        }
        else
        {
            draw_sprite_ext(sprite_fail, image_index, round(x) - global.surface_offset_x, round(y) - global.surface_offset_y, image_xscale, image_yscale, image_angle, image_blend, button_alpha);
        }
        
        if (button_alpha < 0.75)
            button_alpha += 0.03;
    }
    
    surface_reset_target();
    draw_surface(global.arena_surface, global.surface_offset_x, global.surface_offset_y);
}
