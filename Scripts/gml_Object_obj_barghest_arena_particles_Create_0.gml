depth = -6001;
particle_system = part_system_create();
part_system_depth(particle_system, depth);
effect_base = part_type_create();
part_type_sprite(effect_base, spr_pixel, false, false, false);
part_type_color1(effect_base, 8388736);
part_type_size(effect_base, 0.5, 0.75, 0, 0);
part_type_life(effect_base, 120, 120);
part_type_alpha1(effect_base, 1);
part_type_direction(effect_base, 270, 270, 0, 1);
part_type_speed(effect_base, 1, 2, 0, 1);
part_type_orientation(effect_base, 0, 359, 0, 0, true);
part_type_blend(effect_base, 1);
particle_emitter = part_emitter_create(particle_system);
effect_xmin = x - 100;
effect_xmax = x + 100;
effect_ymin = y;
effect_ymax = y;
part_emitter_region(particle_system, particle_emitter, effect_xmin, effect_xmax, effect_ymin, effect_ymax, 3, 0);
part_emitter_stream(particle_system, particle_emitter, effect_base, 20);

repeat (room_speed * 3)
    part_system_update(particle_system);
