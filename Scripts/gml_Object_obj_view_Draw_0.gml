if (global.shaders_active == 1)
{
    switch (shader_active)
    {
        case 1:
            if (!surface_exists(shader_surface))
                shader_surface = surface_create(1280, 720);
            
            surface_set_target(shader_surface);
            draw_clear_alpha(c_black, 0);
            shader_set(shd_grayscale);
            draw_surface(application_surface, 0, 0);
            shader_reset();
            surface_reset_target();
            draw_surface_ext(shader_surface, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 0.5, 0.5, image_angle, image_blend, image_alpha);
            break;
        
        default:
            break;
    }
}
