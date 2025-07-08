if (global.storyline_array[25] == 2)
{
    instance_destroy();
}
else
{
    if (global.storyline_array[5] == 0)
    {
        if (!instance_exists(obj_bedroom_baron_sleeping_1))
            instance_create_depth(x + 3, y - 21, 0, obj_bedroom_baron_sleeping_1);
    }
    
    if (global.storyline_array[30] == 1)
    {
        if (!instance_exists(obj_bedroom_baron_sleeping_2))
            instance_create_depth(x + 3, y - 21, 0, obj_bedroom_baron_sleeping_2);
    }
}
