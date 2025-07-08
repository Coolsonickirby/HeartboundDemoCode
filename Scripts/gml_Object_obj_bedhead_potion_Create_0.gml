event_inherited();
depth = -175;
image_speed = 0;

switch (global.storyline_array[268])
{
    case 0:
        instance_destroy();
        break;
    
    case 4:
        instance_destroy();
        break;
    
    default:
        switch (global.storyline_array[390])
        {
            case 0:
                image_index = global.storyline_array[268] - 1;
                image_index = clamp(image_index, 0, 2);
                break;
            
            case 1:
                image_index = (global.storyline_array[268] - 1) + 3;
                image_index = clamp(image_index, 3, 5);
                break;
        }
        
        break;
}
