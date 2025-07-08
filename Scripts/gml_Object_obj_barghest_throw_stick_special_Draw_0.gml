if (surface_exists(global.arena_surface))
{
    surface_set_target(global.arena_surface);
    draw_clear_alpha(c_black, 0);
    draw_sprite_ext(sprite_index, image_index, round(x) - global.surface_offset_x, round(y) - global.surface_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    surface_reset_target();
    draw_surface(global.arena_surface, global.surface_offset_x, global.surface_offset_y);
}
