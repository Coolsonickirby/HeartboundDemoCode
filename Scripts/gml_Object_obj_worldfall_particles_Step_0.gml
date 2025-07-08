switch (current_particles)
{
    case 2:
        var color_select = irandom_range(0, 1);
        
        switch (color_select)
        {
            case 0:
                part_type_color_rgb(effect_fall, 255, 255, 0, 0, 0, 0);
                break;
            
            case 1:
                part_type_color_rgb(effect_fall, 255, 255, 255, 255, 255, 255);
                break;
        }
        
        break;
}
