if (enemy_attacking == 0)
{
    draw_self();
}
else if (surface_exists(global.arena_surface))
{
    surface_set_target(global.arena_surface);
    draw_clear_alpha(c_black, 0);
    draw_sprite_ext(sprite_index, image_index, round(x) - global.surface_offset_x, round(y) - global.surface_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    surface_reset_target();
    draw_surface(global.arena_surface, global.surface_offset_x, global.surface_offset_y);
}

if (image_blend != color_target)
{
    if (color_target == 16777215)
        color_mod += color_speed;
    
    if (color_target == 0)
        color_mod -= color_speed;
    
    image_blend = make_color_rgb(color_mod, color_mod, color_mod);
}

if (image_alpha != alpha_target)
{
    if (alpha_target == 1)
        image_alpha += alpha_speed;
    
    if (alpha_target == 0)
        image_alpha -= alpha_speed;
}
