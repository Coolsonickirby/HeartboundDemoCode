image_speed = 0;
minute_base = irandom(360);
minute_mod = irandom(60);
hour_base = irandom(360);
hour_mod = irandom(60);

switch (global.storyline_array[290])
{
    case 0:
        clock_base = global.storyline_array[287];
        clock_gears = global.storyline_array[289];
        break;
    
    case 1:
        clock_base = global.storyline_array[287] + 2;
        clock_gears = global.storyline_array[289] + 2;
        break;
}

if (room == global_bedhead)
{
    if (global.storyline_array[277] != 1)
        instance_destroy();
}
