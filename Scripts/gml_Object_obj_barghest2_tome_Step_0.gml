if (image_alpha != alpha_target)
{
    if (alpha_target == 1)
        image_alpha += alpha_speed;
    
    if (alpha_target == 0)
        image_alpha -= alpha_speed;
}
