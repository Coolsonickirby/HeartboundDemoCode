var color_select = irandom(1);

switch (color_select)
{
    case 0:
        part_type_color_rgb(effect_fall, 255, 255, 0, 0, 0, 0);
        break;
    
    case 1:
        part_type_color_rgb(effect_fall, 255, 255, 255, 255, 255, 255);
        break;
}

effect_xmin = camera_get_view_x(view_camera[view_current]) - 100;
effect_xmax = camera_get_view_x(view_camera[view_current]) + camera_get_view_width(view_camera[view_current]) + 100;
effect_ymin = camera_get_view_y(view_camera[view_current]) - 100;
effect_ymax = camera_get_view_y(view_camera[view_current]) + camera_get_view_height(view_camera[view_current]) + 100;
part_emitter_region(particle_system, particle_emitter, effect_xmin, effect_xmax, effect_ymin, effect_ymax, 0, 2);
