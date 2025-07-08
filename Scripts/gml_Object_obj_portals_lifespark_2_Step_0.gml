if (x >= (target_portal.x - 3) && x <= (target_portal.x + 3))
{
    if (y >= (target_portal.y - 3) && y <= (target_portal.y + 3))
    {
        speed = 0;
        
        if (image_xscale > 0)
        {
            image_xscale -= 0.01;
            image_yscale -= 0.01;
        }
        else
        {
            instance_destroy();
        }
    }
}

image_angle += angle_modifier;
