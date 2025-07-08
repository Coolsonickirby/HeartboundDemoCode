if (alpha > 0)
{
    alpha -= fadein_amount;
    alarm[0] = room_speed * fadein_timer;
}
else
{
    alpha = 0;
    instance_destroy();
}
