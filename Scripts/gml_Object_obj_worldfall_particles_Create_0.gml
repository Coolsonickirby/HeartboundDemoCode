particle_system = part_system_create();
part_system_depth(particle_system, depth);
alpha_fade = 1;
alpha_step = 0.05;
effect_fall = part_type_create();
part_type_speed(effect_fall, 4, 6, 0, 0);
part_type_direction(effect_fall, 90, 90, 0, 2);
part_type_life(effect_fall, 20, 50);
part_type_alpha3(effect_fall, 0, alpha_fade, 0);
current_particles = global.storyline_array[(120 + global.storyline_array[327]) - 1];

switch (current_particles)
{
    case 1:
        part_type_sprite(effect_fall, spr_blank, false, false, false);
        break;
    
    case 2:
        part_type_sprite(effect_fall, spr_pixel, false, false, false);
        part_type_size(effect_fall, 1, 4, 0, 0);
        part_type_color_rgb(effect_fall, 255, 255, 0, 0, 0, 0);
        break;
    
    case 3:
        part_type_sprite(effect_fall, spr_leaf, true, false, true);
        part_type_size(effect_fall, 0.5, 1, 0, 0);
        part_type_orientation(effect_fall, 0, 0, 0, 20, false);
        break;
    
    case 4:
        part_type_sprite(effect_fall, spr_pixel, false, false, false);
        part_type_size(effect_fall, 8, 12, -0.4, 0);
        part_type_colour2(effect_fall, make_color_rgb(255, 0, 0), make_color_rgb(255, 255, 0));
        part_type_blend(effect_fall, true);
        break;
    
    case 5:
        part_type_sprite(effect_fall, spr_pixel, false, false, false);
        part_type_size(effect_fall, 8, 12, -0.4, 0);
        part_type_color2(effect_fall, make_color_rgb(150, 150, 255), make_color_rgb(255, 255, 255));
        part_type_blend(effect_fall, true);
        break;
}

particle_emitter = part_emitter_create(particle_system);
effect_xmin = camera_get_view_x(view_camera[view_current]) - 100;
effect_xmax = camera_get_view_x(view_camera[view_current]) + camera_get_view_width(view_camera[view_current]) + 100;
effect_ymin = camera_get_view_y(view_camera[view_current]) - 100;
effect_ymax = camera_get_view_y(view_camera[view_current]) + camera_get_view_height(view_camera[view_current]) + 100;
part_emitter_region(particle_system, particle_emitter, effect_xmin, effect_xmax, effect_ymin, effect_ymax, 0, 2);
part_emitter_stream(particle_system, particle_emitter, effect_fall, 10);

repeat (room_speed * 10)
    part_system_update(particle_system);
