if (glow_alpha > 0)
{
    glow_alpha -= 0.01;
    image_alpha -= 0.01;
    alarm[3] = 1;
}
else
{
    instance_destroy();
}
