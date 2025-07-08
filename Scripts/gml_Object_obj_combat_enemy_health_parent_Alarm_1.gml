if (y < target_y)
{
    y += 2;
    alarm[1] = 1;
}
else
{
    instance_destroy();
}
