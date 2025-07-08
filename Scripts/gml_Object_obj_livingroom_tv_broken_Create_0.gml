event_inherited();
depth = -133;
talk_distance = 30;
cur_message = 9;

if (global.storyline_array[25] != 2)
    instance_destroy();

if (global.storyline_array[107] < 2)
    cur_message = 9;
else
    cur_message = 17;
