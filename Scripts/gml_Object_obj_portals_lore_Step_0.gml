if (anim_step == 1)
{
    if (y > 255)
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_walk");
        image_speed = 0.2;
        global.player_moving = 1;
        direction = 90;
        speed = 2;
    }
    else
    {
        anim_step = 0;
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_sitting");
        global.player_moving = 0;
        speed = 0;
        y = 255;
        alarm[1] = room_speed * 0.5;
    }
}
else if (anim_step == 2)
{
    if (y < 320)
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_walk");
        image_speed = 0.05;
        speed = global.player_speed_cur * 0.5;
        direction = 270;
    }
    else
    {
        anim_step = 0;
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_stand");
        image_speed = 0.1;
        speed = 0;
        y = 320;
    }
}
