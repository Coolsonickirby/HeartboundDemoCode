event_inherited();
story_index = 9;
story_index2 = 28;
depth = 1;
image_blend = #D1AB44;
image_speed = 0;
image_index = 0;
talk_distance = 1;
cur_message = 3;
activated = 0;
sound_played = 0;

if (global.storyline_array[25] != 2)
{
    if (global.storyline_array[story_index] == 1)
    {
        if (global.storyline_array[25] == 0)
        {
            instance_destroy();
        }
        else if (global.storyline_array[story_index2] == 0)
        {
            image_blend = c_purple;
            image_speed = 0;
            image_index = 1;
            cur_message = 8;
        }
        else
        {
            instance_destroy();
        }
    }
}
else
{
    instance_destroy();
}
