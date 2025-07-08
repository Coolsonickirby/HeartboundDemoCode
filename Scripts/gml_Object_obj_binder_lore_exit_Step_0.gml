if (anim_step == 1)
{
    if (y < 190)
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_down_walk");
        image_speed = 0.15;
        direction = 270;
        speed = 1.5;
    }
    else if (x > 322)
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_left_walk");
        image_speed = 0.15;
        direction = 180;
        speed = 1.5;
    }
    else if (x < 318)
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_right_walk");
        image_speed = 0.15;
        direction = 0;
        speed = 1.5;
    }
    else
    {
        x = 320;
        anim_step = 0;
        obj_binder_binder_exit.event_step = 0;
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_stand");
        global.player_direction = 4;
        image_speed = 0.1;
        speed = 0;
        
        with (obj_binder_binder_exit)
            sprite_index = spr_binder_down_stand;
    }
}
else if (anim_step == 2)
{
    if (y < 210)
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_walk");
        image_speed = 0.1;
        direction = 270;
        speed = 1;
    }
    else
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_stand");
        image_speed = 0.1;
        anim_step = 0;
        speed = 0;
        obj_binder_binder_exit.event_step = 0;
    }
}
else if (anim_step == 3)
{
    if (y > 145)
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_walk");
        image_speed = 0.1;
        direction = 90;
        speed = 1;
    }
    else
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_left_stand");
        image_speed = 0.1;
        anim_step = 0;
        speed = 0;
        obj_binder_binder_exit.event_step = 0;
    }
}
else if (anim_step == 4)
{
    if (y > 118)
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_walk");
        image_speed = 0.1;
        direction = 90;
        speed = 0.5;
    }
    else
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_down_stand");
        image_speed = 0.1;
        anim_step = 0;
        speed = 0;
        depth = -140;
        obj_binder_binder_exit.event_step = 0;
    }
}
