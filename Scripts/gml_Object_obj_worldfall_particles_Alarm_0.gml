current_particles = global.storyline_array[119];

switch (current_particles)
{
    case 2:
        part_type_sprite(effect_fall, spr_pixel, false, false, false);
        part_type_size(effect_fall, 1, 4, 0, 0);
        part_type_color_rgb(effect_fall, 255, 255, 0, 0, 0, 0);
        break;
    
    case 3:
        part_type_sprite(effect_fall, spr_leaf, true, false, true);
        part_type_size(effect_fall, 0.5, 1, 0, 0);
        part_type_orientation(effect_fall, 0, 0, 0, 20, false);
        part_type_color_rgb(effect_fall, 255, 255, 255, 255, 255, 255);
        break;
    
    case 4:
        part_type_sprite(effect_fall, spr_pixel, false, false, false);
        part_type_size(effect_fall, 8, 12, -0.4, 0);
        part_type_color_rgb(effect_fall, 255, 255, 255, 255, 255, 255);
        part_type_colour2(effect_fall, make_color_rgb(255, 0, 0), make_color_rgb(255, 255, 0));
        part_type_blend(effect_fall, true);
        break;
    
    case 5:
        part_type_sprite(effect_fall, spr_pixel, false, false, false);
        part_type_size(effect_fall, 8, 12, -0.4, 0);
        part_type_color_rgb(effect_fall, 255, 255, 255, 255, 255, 255);
        part_type_color2(effect_fall, make_color_rgb(150, 150, 255), make_color_rgb(255, 255, 255));
        part_type_blend(effect_fall, true);
        break;
}

repeat (room_speed * 3)
    part_system_update(particle_system);

alarm[2] = room_speed * 0.25;
