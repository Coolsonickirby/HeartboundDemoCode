if (global.storyline_array[119] != 2)
{
    instance_destroy();
    exit;
}

depth = 1000005;
particle_system = part_system_create();
part_system_depth(particle_system, depth);
effect_fall = part_type_create();
part_type_sprite(effect_fall, spr_pixel, false, false, false);
part_type_size(effect_fall, 1, 4, 0, 0);
part_type_speed(effect_fall, 0.5, 1, 0, 0);
part_type_life(effect_fall, 20, 50);
part_type_alpha3(effect_fall, 0, 1, 0);
part_type_direction(effect_fall, 90, 90, 0, 10);
part_type_color_rgb(effect_fall, 255, 255, 0, 0, 0, 0);
particle_emitter = part_emitter_create(particle_system);
effect_xmin = camera_get_view_x(view_camera[view_current]) - 100;
effect_xmax = camera_get_view_x(view_camera[view_current]) + camera_get_view_width(view_camera[view_current]) + 100;
effect_ymin = camera_get_view_y(view_camera[view_current]) - 100;
effect_ymax = camera_get_view_y(view_camera[view_current]) + camera_get_view_height(view_camera[view_current]) + 100;
part_emitter_region(particle_system, particle_emitter, effect_xmin, effect_xmax, effect_ymin, effect_ymax, 0, 2);
part_emitter_stream(particle_system, particle_emitter, effect_fall, 10);

repeat (room_speed * 10)
    part_system_update(particle_system);
