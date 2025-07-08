depth = 1;
image_speed = 0;
image_index = 0;
sprite_index = sprite_norm;

switch (global.storyline_array[1])
{
    case 2:
        scr_clothing_change(0);
        global.storyline_array[1] = 2;
        break;
    
    case 3:
        scr_clothing_change(1);
        global.storyline_array[1] = 3;
        break;
    
    case 4:
        scr_clothing_change(0);
        global.storyline_array[1] = 4;
        break;
    
    case 5:
        scr_clothing_change(1);
        global.storyline_array[1] = 5;
        break;
}

global.player_direction = 3;
instance_create_depth(x - 29, y - 15, 0, obj_lore);

if (instance_exists(obj_bedhead_head))
{
    with (obj_bedhead_head)
        alarm[0] = 1;
}
