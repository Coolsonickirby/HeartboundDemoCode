if (global.storyline_array[story_index] == 0)
{
    if (!instance_exists(obj_roomdark_parent))
    {
        with (instance_create_depth(x, y, 0, object_spawn))
            object_color = other.object_color;
    }
}

if (global.storyline_array[25] != 0)
{
    if (!instance_exists(obj_roomdark_parent))
    {
        with (instance_create_depth(x, y, 0, object_spawn))
            object_color = other.object_color;
    }
}
