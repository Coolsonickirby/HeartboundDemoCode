event_inherited();
last_activated = 0;
text_location = 0;
talk_distance = 0;
cur_message = 1;
var seed_last_digit = real(string_char_at(global.world_seed, string_length(global.world_seed)));

if (seed_last_digit != 1)
{
    if (seed_last_digit != 2)
    {
        if (seed_last_digit != 3)
            instance_destroy();
    }
}

if (global.storyline_array[36] == 1)
    instance_destroy();
