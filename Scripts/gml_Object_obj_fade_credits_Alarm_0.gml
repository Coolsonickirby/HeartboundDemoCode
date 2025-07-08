if (fade_out == false)
{
    if (alpha > 0)
    {
        alpha -= fadein_amount;
        alarm[0] = room_speed * fadein_timer;
    }
    else
    {
        instance_destroy();
    }
}
