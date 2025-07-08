event_inherited();
text_location = 2;
talk_distance = 10;
cur_message = 7;

if (global.storyline_array[25] != 2)
    instance_destroy();

if (global.storyline_array[107] < 2)
    cur_message = 7;
else
    cur_message = 15;
