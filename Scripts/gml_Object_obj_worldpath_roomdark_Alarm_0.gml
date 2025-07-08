if (instance_exists(obj_portal_parent))
{
    with (obj_portal_parent)
        alarm[2] = 1;
}

alarm[1] = room_speed * 0.8;
