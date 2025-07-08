function scr_animus_pausetime()
{
    if (instance_exists(obj_animus_time))
    {
        with (obj_animus_time)
            alarm[0] = 0;
    }
}
