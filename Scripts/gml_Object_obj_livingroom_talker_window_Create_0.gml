event_inherited();
text_location = 2;
talk_distance = 20;
cur_message = 10;

if (global.storyline_array[25] == 2)
{
    if (global.storyline_array[107] < 2)
        cur_message = 11;
    else
        cur_message = 12;
}
