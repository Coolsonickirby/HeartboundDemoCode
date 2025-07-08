if (global.storyline_array[7] != 0)
{
    if (!instance_exists(obj_bedhead_baron))
        instance_create_depth(x + 3, y - 21, 0, obj_bedhead_baron);
}
