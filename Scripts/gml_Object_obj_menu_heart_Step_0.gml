if (activated == 1)
{
    if (last_active == 0)
    {
        last_active = 1;
        alarm[0] = 1;
        alarm[1] = -1;
        scr_sound_play(button_sound, 0.75, random_range(0.5, 0.7), false);
    }
}
else
{
    alarm[0] = -1;
    alarm[1] = 1;
    last_active = 0;
}

x = x_anchor + (sin(move_counter * x_freq) * x_max);
y = y_anchor + (sin(move_counter * y_freq) * y_max);
move_counter += 1;

if (activated)
{
    var color_select = irandom_range(0, 1);
    
    switch (color_select)
    {
        case 0:
            part_type_color1(effect_fall, 12285846);
            break;
        
        case 1:
            part_type_color1(effect_fall, 7456253);
            break;
    }
    
    part_angle = irandom(360);
    x_length = x + lengthdir_x(random_range(90, 110), part_angle);
    y_length = y + lengthdir_y(random_range(90, 110), part_angle);
    part_dir = point_direction(x_length, y_length, x, y);
    part_type_direction(effect_fall, part_dir, part_dir, 0, 10);
    part_particles_create(particle_system, x_length, y_length, effect_fall, 1);
}
