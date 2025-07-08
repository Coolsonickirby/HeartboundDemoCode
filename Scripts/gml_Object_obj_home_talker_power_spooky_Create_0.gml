event_inherited();
talk_distance = 0;
cur_message = 204;
last_activated = 0;
activated = 0;
alarm[0] = room_speed * 0.5;

if (global.storyline_array[17] == 0)
    cur_message = 204;
else if (global.storyline_array[31] == 0)
    cur_message = 205;
else
    cur_message = 206;

global.storyline_array[108] += 1;
