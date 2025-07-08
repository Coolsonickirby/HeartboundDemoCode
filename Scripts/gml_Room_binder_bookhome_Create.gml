if (global.storyline_array[40] == 0)
{
    if (instance_exists(obj_lore))
    {
        with (obj_lore)
            instance_destroy();
    }
}
