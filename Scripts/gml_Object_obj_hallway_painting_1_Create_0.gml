event_inherited();
depth = 1;
dest_y = y - 3;

if (global.storyline_array[9] == 1)
{
    image_index = 1;
    y = dest_y;
}
else
{
    alarm[0] = 1;
}

if (global.storyline_array[25] == 2)
    instance_destroy();
