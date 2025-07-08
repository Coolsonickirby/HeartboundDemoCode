event_inherited();
swap_type = 0;
image_speed = 0.1;

switch (global.player_direction)
{
    case 1:
        sprite_index = global.clothing_array[4];
        break;
    
    case 2:
        sprite_index = global.clothing_array[5];
        break;
    
    case 3:
        sprite_index = global.clothing_array[6];
        break;
    
    case 4:
        sprite_index = global.clothing_array[7];
        break;
}
