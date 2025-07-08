if (global.wiggletext_active == 1)
{
    x_max = 1;
    y_max = 1;
    x = x_anchor + (sin(move_counter * x_freq) * x_max);
    y = y_anchor + (sin(move_counter * y_freq) * y_max);
    move_counter = irandom(200);
    alarm[0] = 2;
}
else
{
    x = x_anchor;
    y = y_anchor;
    alarm[0] = 1;
}
