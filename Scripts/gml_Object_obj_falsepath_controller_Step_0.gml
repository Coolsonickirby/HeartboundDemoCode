if (events_completed == events_total)
{
    if (!instance_exists(obj_falsepath_door))
    {
        instance_create_depth(155, 275, 0, obj_falsepath_door);
        instance_create_depth(155, 223, 0, obj_falsepath_lightbulb_door);
        instance_destroy();
    }
}
