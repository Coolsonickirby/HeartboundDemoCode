depth = -10000;
particle_system = part_system_create();
part_system_depth(particle_system, depth);
effect_rain = part_type_create();
part_type_sprite(effect_rain, spr_raindrop, false, false, true);
part_type_size(effect_rain, 1, 1, 0, 0);
part_type_gravity(effect_rain, 0.3, 270);
part_type_life(effect_rain, 40, 40);
part_type_alpha2(effect_rain, 0, 0.25);
part_type_direction(effect_rain, 0, 0, 0, 5);
part_type_orientation(effect_rain, -28, -28, 0, 0, false);
effect_puddle = part_type_create();
part_type_sprite(effect_puddle, spr_rainsplash, true, true, false);
part_type_size(effect_puddle, 1, 1, 0, 0);
part_type_life(effect_puddle, 10, 15);
part_type_alpha1(effect_puddle, 0.1);
part_type_death(effect_rain, 1, effect_puddle);
particle_emitter = part_emitter_create(particle_system);
effect_xmin = x - 2;
effect_xmax = x + 2;
effect_ymin = y;
effect_ymax = y;
part_emitter_region(particle_system, particle_emitter, effect_xmin, effect_xmax, effect_ymin, effect_ymax, 3, 0);
part_emitter_stream(particle_system, particle_emitter, effect_rain, -50);

repeat (room_speed * 3)
    part_system_update(particle_system);
