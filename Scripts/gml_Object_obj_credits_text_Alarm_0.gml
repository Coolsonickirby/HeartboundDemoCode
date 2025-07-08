if (y < spawn_y)
{
    if (instance_exists(obj_controller_credits))
    {
        with (obj_controller_credits)
            alarm[0] = 1;
    }
}
else
{
    alarm[0] = 1;
}
