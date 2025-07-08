freeze_player = 0;

if (global.storyline_array[26] == 1)
{
    if (global.storyline_array[30] == 0)
    {
        if (global.storyline_array[107] >= 2)
        {
            alarm[0] = room_speed * 0.5;
            freeze_player = 1;
        }
    }
}
