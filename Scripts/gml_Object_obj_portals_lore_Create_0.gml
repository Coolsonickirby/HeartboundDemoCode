event_inherited();
global.player_direction = 4;

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

change_value = 1;
collision_mask = spr_blank_mask;
image_speed = 0.1;
anim_step = 0;
target_portal = 0;
alarm[0] = room_speed * 3;
