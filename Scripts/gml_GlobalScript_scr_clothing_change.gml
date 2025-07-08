function scr_clothing_change(arg0)
{
    var clothing_selected = arg0;
    scr_health_change(clothing_selected);
    global.storyline_array[1] = clothing_selected;
    global.clothing_array = 0;
    global.clothing_array[0] = asset_get_index("spr_lore_" + global.player_clothing + "_right_walk");
    global.clothing_array[1] = asset_get_index("spr_lore_" + global.player_clothing + "_down_walk");
    global.clothing_array[2] = asset_get_index("spr_lore_" + global.player_clothing + "_left_walk");
    global.clothing_array[3] = asset_get_index("spr_lore_" + global.player_clothing + "_up_walk");
    global.clothing_array[4] = asset_get_index("spr_lore_" + global.player_clothing + "_right_stand");
    global.clothing_array[5] = asset_get_index("spr_lore_" + global.player_clothing + "_down_stand");
    global.clothing_array[6] = asset_get_index("spr_lore_" + global.player_clothing + "_left_stand");
    global.clothing_array[7] = asset_get_index("spr_lore_" + global.player_clothing + "_up_stand");
    global.clothing_array[8] = asset_get_index("spr_lore_" + global.player_clothing + "_right_push");
    global.clothing_array[9] = asset_get_index("spr_lore_" + global.player_clothing + "_down_push");
    global.clothing_array[10] = asset_get_index("spr_lore_" + global.player_clothing + "_left_push");
    global.clothing_array[11] = asset_get_index("spr_lore_" + global.player_clothing + "_up_push");
    dialog_talky_init();
}
