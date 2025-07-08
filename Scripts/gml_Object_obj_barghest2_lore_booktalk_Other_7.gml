if (sprite_index == action_sprite)
{
    instance_create_depth(x, y + 87, 0, obj_barghest2_tome);
    sprite_index = asset_get_index("spr_lore_" + cur_clothing + "_down_stand");
    image_speed = 0.1;
    
    switch (global.player_clothing)
    {
        case "sweaterbook":
            scr_clothing_change(1);
            break;
        
        case "pajamabook":
            scr_clothing_change(0);
            break;
    }
}
