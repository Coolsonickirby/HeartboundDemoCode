event_inherited();
sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_sitting");
collision_mask = spr_blank_mask;

if (global.storyline_array[40] != 0)
    instance_destroy();
