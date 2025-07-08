event_inherited();

if (global.storyline_array[7] == 1)
{
    if (!instance_exists(obj_baron_follower))
        instance_create_depth(round(x), round(y), 0, obj_baron_follower);
}
