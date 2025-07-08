event_inherited();
talk_distance = 10;
cur_message = 8;

if (global.storyline_array[25] != 2)
    instance_destroy();

if (global.storyline_array[107] < 2)
    cur_message = 8;
else
    cur_message = 16;
