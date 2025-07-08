if (movement_active == 1)
{
    x = x_anchor + (sin(move_counter * x_freq) * x_max);
    y = y_anchor + (sin(move_counter * y_freq) * y_max);
    move_counter += 1;
    
    if ((x - x_anchor) < -(x_max - 5))
    {
        depth = -400;
        
        if (movement_stop == 1)
            alarm[2] = 1;
    }
    else if ((x - x_anchor) > (x_max - 5))
    {
        depth = 400;
        
        if (movement_stop == 1)
            alarm[2] = 1;
    }
}
