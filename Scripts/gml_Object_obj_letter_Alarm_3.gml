if (global.wiggletext_active == 1)
{
    switch (fly_direction)
    {
        case 6:
            x_max = 1;
            y_max = 1;
            x = x_anchor + (sin(move_counter * x_freq) * x_max);
            y = y_anchor + (sin(move_counter * y_freq) * y_max);
            move_counter = irandom(200);
            alarm[3] = irandom_range(5, 30);
            break;
        
        case 7:
            x_max = 1;
            y_max = 1;
            x = x_anchor + (sin(move_counter * x_freq) * x_max);
            y = y_anchor + (sin(move_counter * y_freq) * y_max);
            move_counter = irandom(200);
            alarm[3] = irandom_range(2, 5);
            break;
        
        case 8:
            x_max = 1;
            y_max = 1;
            x = x_anchor + (sin(move_counter * x_freq) * x_max);
            y = y_anchor + (sin(move_counter * y_freq) * y_max);
            move_counter = irandom(200);
            alarm[3] = 2;
            break;
        
        default:
            x_max = 5;
            y_max = 5;
            x = x_anchor + (sin(move_counter * x_freq) * x_max);
            y = y_anchor + (sin(move_counter * y_freq) * y_max);
            move_counter += 1;
            alarm[3] = 1;
            break;
    }
}
else
{
    x = x_anchor;
    y = y_anchor;
    alarm[3] = 1;
}
