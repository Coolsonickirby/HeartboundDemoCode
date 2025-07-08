image_alpha -= 0.015;

if (image_alpha <= 0)
    instance_destroy();
else
    alarm[0] = 1;
