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

cur_clothing = 0;

switch (global.player_clothing)
{
    case "sweaterbook":
        cur_clothing = "sweater";
        break;
    
    case "pajamabook":
        cur_clothing = "pajama";
        break;
}

action_sprite = asset_get_index("spr_lore_" + cur_clothing + "_down_bookthrow");
change_value = 1;
collision_mask = spr_blank_mask;
anim_step = 1;
