if (global.storyline_array[119] != 3)
{
    instance_destroy();
    exit;
}

depth = 1000005;
particle_system = part_system_create();
part_system_depth(particle_system, depth);
effect_fall = part_type_create();
part_type_sprite(effect_fall, spr_leaf, true, false, true);
part_type_size(effect_fall, 1, 1, 0, 0);
part_type_speed(effect_fall, 0.5, 1, 0, 0.1);
part_type_life(effect_fall, 50, 400);
part_type_alpha3(effect_fall, 0, 1, 1);
part_type_direction(effect_fall, 190, 230, 0, 20);
part_type_orientation(effect_fall, 0, 0, 0, 20, false);
effect_land = part_type_create();
part_type_sprite(effect_land, spr_leaf, false, false, false);
part_type_speed(effect_land, 0.05, 0.1, 0, 0);
part_type_direction(effect_land, 190, 230, 0, 0);
part_type_size(effect_land, 1, 1, 0, 0);
part_type_life(effect_land, 40, 50);
part_type_alpha2(effect_land, 0.8, 0);
part_type_death(effect_fall, 1, effect_land);
particle_emitter = part_emitter_create(particle_system);
effect_xmin = camera_get_view_x(view_camera[view_current]) - 100;
effect_xmax = camera_get_view_x(view_camera[view_current]) + camera_get_view_width(view_camera[view_current]) + 100;
effect_ymin = camera_get_view_y(view_camera[view_current]) - 100;
effect_ymax = camera_get_view_y(view_camera[view_current]) + camera_get_view_height(view_camera[view_current]) + 100;
part_emitter_region(particle_system, particle_emitter, effect_xmin, effect_xmax, effect_ymin, effect_ymax, 0, 0);
part_emitter_stream(particle_system, particle_emitter, effect_fall, -2);

repeat (room_speed * 10)
    part_system_update(particle_system);
