if (anim_step == 1)
{
    if (y > 520)
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_walk");
        image_speed = 0.15;
        direction = point_direction(x, y, 320, 520);
        speed = 1.5;
    }
    else
    {
        anim_step = 0;
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_stand");
        global.player_direction = 4;
        global.player_moving = 0;
        speed = 0;
        y = 520;
        image_speed = 0.1;
        instance_create_depth(x, y, 0, obj_barghest2_talker_booktalk);
    }
}
else if (anim_step == 2)
{
    anim_step = 0;
    sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_down_stand");
    image_speed = 0.1;
    alarm[0] = room_speed;
}
else if (anim_step == 3)
{
    if (sprite_index != action_sprite)
    {
        anim_step = 0;
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_stand");
        image_speed = 0.1;
        alarm[1] = room_speed;
    }
}
