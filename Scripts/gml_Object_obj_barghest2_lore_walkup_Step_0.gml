if (anim_step == 1)
{
    if (y > 370)
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_walk");
        image_speed = 0.2;
        direction = point_direction(x, y, 320, 370);
        global.player_moving = 1;
        speed = 2;
    }
    else
    {
        anim_step = 0;
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_stand");
        global.player_direction = 4;
        global.player_moving = 0;
        speed = 0;
        y = 370;
        image_speed = 0.1;
        alarm[0] = room_speed;
    }
}
