event_inherited();
image_alpha = 1;
event_triggered = 0;
event_inherited();
particle_system = part_system_create();
part_system_depth(particle_system, -1000);
effect_base = part_type_create();
part_type_sprite(effect_base, spr_pixel, false, false, false);
part_type_color1(effect_base, 16777215);
part_type_size(effect_base, 1, 1, 0, 0);
part_type_life(effect_base, 30, 30);
part_type_alpha3(effect_base, 1, 1, 0);
part_type_direction(effect_base, 90, 90, 0, 1);
part_type_speed(effect_base, 1, 2, 0, 1);
part_type_orientation(effect_base, 0, 359, 0, 0, true);
part_type_blend(effect_base, true);
particle_emitter = part_emitter_create(particle_system);
effect_xmin = x - (sprite_width * 0.5);
effect_xmax = x + (sprite_width * 0.5);
effect_ymin = y - (sprite_height * 0.5);
effect_ymax = y + (sprite_height * 0.5);
part_emitter_region(particle_system, particle_emitter, effect_xmin, effect_xmax, effect_ymin, effect_ymax, 0, 2);
part_emitter_stream(particle_system, particle_emitter, effect_base, 20);

repeat (room_speed * 3)
    part_system_update(particle_system);
