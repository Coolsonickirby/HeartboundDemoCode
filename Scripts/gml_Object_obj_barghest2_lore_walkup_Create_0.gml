event_inherited();

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
anim_step = 1;
light_expand = 0;
sound_played = 0;
