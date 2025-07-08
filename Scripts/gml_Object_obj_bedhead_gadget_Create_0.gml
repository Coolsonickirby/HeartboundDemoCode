depth = -212;
image_speed = 0.1;
talk_distance = 10;
cur_message = 14;

if (current_month == 9 && current_day == 2)
{
    global.storyline_array[257] = 1;
    steam_set_achievement("GLOBAL_HEADBUTTS");
}

if (global.storyline_array[257] != 1)
    instance_destroy();
