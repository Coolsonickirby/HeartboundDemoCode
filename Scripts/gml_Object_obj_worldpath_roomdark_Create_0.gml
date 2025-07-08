depth = -5000;
alarm[0] = room_speed * 1.5;

if (instance_exists(obj_view))
{
    with (obj_view)
        follow_player = 1;
}
