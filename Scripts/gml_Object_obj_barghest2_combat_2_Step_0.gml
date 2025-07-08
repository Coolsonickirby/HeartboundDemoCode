event_inherited();

if (move_lock == 0)
{
    x = x_anchor + (sin(move_counter * x_freq) * x_max);
    y = y_anchor + (sin(move_counter * y_freq) * y_max);
    move_counter += 1;
}
