event_inherited();
image_speed = 0;

switch (global.storyline_array[392])
{
    case 0:
        instance_destroy();
        break;
    
    default:
        image_index = global.storyline_array[392] - 1;
        break;
}
