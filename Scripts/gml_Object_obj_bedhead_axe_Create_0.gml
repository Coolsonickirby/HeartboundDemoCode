depth = -100;
image_speed = 0;

switch (global.storyline_array[23])
{
    case 0:
        instance_destroy();
        break;
    
    case 1:
        image_index = 1;
        break;
    
    case 2:
        image_index = 0;
        break;
    
    case 3:
        image_index = 2;
        break;
}
