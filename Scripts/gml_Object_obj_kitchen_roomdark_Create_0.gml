story_index = 16;
activated = global.storyline_array[story_index];

if (global.storyline_array[25] == 0)
{
    if (activated == 1)
        instance_destroy();
}

depth = -10000;
image_blend = #9D97CD;
