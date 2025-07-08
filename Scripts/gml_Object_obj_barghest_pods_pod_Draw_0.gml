if (surface_exists(global.arena_surface))
{
    surface_set_target(global.arena_surface);
    draw_clear_alpha(c_black, 0);
    image_angle += angle_modifier;
    
    if (global.control_type == 0)
    {
        if (collision_circle(mouse_x, mouse_y, 5, id, true, false))
        {
            gpu_set_fog(true, c_red, 0, 0);
            draw_sprite_ext(sprite_index, image_index, round(x) - global.surface_offset_x - 2, round(y) - global.surface_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            draw_sprite_ext(sprite_index, image_index, (round(x) - global.surface_offset_x) + 2, round(y) - global.surface_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            draw_sprite_ext(sprite_index, image_index, round(x) - global.surface_offset_x, round(y) - global.surface_offset_y - 2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            draw_sprite_ext(sprite_index, image_index, round(x) - global.surface_offset_x, (round(y) - global.surface_offset_y) + 2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            draw_sprite_ext(sprite_index, image_index, (round(x) - global.surface_offset_x) + 1, (round(y) - global.surface_offset_y) + 1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            draw_sprite_ext(sprite_index, image_index, (round(x) - global.surface_offset_x) + 1, round(y) - global.surface_offset_y - 1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            draw_sprite_ext(sprite_index, image_index, round(x) - global.surface_offset_x - 1, (round(y) - global.surface_offset_y) + 1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            draw_sprite_ext(sprite_index, image_index, round(x) - global.surface_offset_x - 1, round(y) - global.surface_offset_y - 1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            gpu_set_fog(false, c_red, 0, 0);
            object_selected = 1;
        }
        else
        {
            object_selected = 0;
        }
    }
    
    draw_sprite_ext(sprite_index, image_index, round(x) - global.surface_offset_x, round(y) - global.surface_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    
    if (global.control_type == 1)
        draw_sprite_ext(pod_control, pod_state, round(x) - global.surface_offset_x, round(y) - global.surface_offset_y, image_xscale, image_yscale, 0, image_blend, image_alpha);
    
    surface_reset_target();
    draw_surface(global.arena_surface, global.surface_offset_x, global.surface_offset_y);
}
