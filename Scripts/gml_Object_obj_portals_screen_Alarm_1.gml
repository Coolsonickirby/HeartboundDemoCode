if (alpha < 1)
{
    alpha += fadeout_amount;
    alarm[1] = room_speed * fadeout_timer;
}
else
{
    with (obj_portals_lore)
    {
        alarm[7] = room_speed;
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_down_laying");
        y += 30;
    }
    
    with (obj_portals_baron)
        y += 20;
}
