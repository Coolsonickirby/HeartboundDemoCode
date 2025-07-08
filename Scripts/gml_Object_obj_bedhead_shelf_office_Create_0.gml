event_inherited();
depth = -174;
image_speed = 0;
check_items[0] = global.storyline_array[160];
check_items[1] = global.storyline_array[171];
check_items[2] = global.storyline_array[182];
check_items[3] = global.storyline_array[183];
check_height = array_length(check_items);
check_value = 0;

for (var xx = 0; xx < (check_height - 1); xx++)
{
    if (check_items[xx] != 0)
        check_value += 1;
}

if (check_value == 0)
    instance_destroy();
