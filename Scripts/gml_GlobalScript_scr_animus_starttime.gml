function scr_animus_starttime()
{
    if (instance_exists(obj_animus_time))
    {
        with (obj_animus_time)
            alarm[0] = 1;
    }
}
