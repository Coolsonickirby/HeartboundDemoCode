image_alpha -= 0.01;
effect_base = part_type_create();
part_type_sprite(effect_base, spr_pixel, false, false, false);
part_type_color1(effect_base, 16777215);
part_type_size(effect_base, 1, 1, 0, 0);
part_type_life(effect_base, 30, 30);
part_type_alpha3(effect_base, image_alpha, image_alpha, 0);
part_type_direction(effect_base, 90, 90, 0, 1);
part_type_speed(effect_base, 1, 2, 0, 1);
part_type_orientation(effect_base, 0, 359, 0, 0, true);
part_type_blend(effect_base, true);
part_emitter_region(particle_system, particle_emitter, effect_xmin, effect_xmax, effect_ymin, effect_ymax, 0, 2);
part_emitter_stream(particle_system, particle_emitter, effect_base, 20);

if (image_alpha <= 0)
{
    if (alarm[0] == -1)
    {
        event_triggered = 1;
        alarm[0] = room_speed;
        instance_create_depth(x, y, 0, obj_booktrial3_trigger_entrance);
    }
}

if (event_triggered == 0)
    global.player_frozen = 1;
