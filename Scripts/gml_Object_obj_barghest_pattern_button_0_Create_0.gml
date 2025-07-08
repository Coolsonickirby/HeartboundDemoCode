event_inherited();
sprite_base = asset_get_index("spr_" + string_delete(object_get_name(object_index), 1, 4) + "_base");
button_allowed = 0;
button_number = 0;
button_alpha = 1;
target_position = obj_view.y - 83;
direction = 270;
speed = 3;
