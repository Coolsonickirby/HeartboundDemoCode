event_inherited();
shadow_name = spr_kitchen_sink_shadow;
talk_distance = 40;
cur_message = 1;
min_message = 1;
max_message = 3;
story_index = 18;
cur_talks = global.storyline_array[story_index];
cur_message = min_message + cur_talks;

if (cur_message > max_message)
    cur_message = max_message;
