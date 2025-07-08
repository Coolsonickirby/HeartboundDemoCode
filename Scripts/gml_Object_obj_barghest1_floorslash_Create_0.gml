event_inherited();
var seed_last_digit = real(string_char_at(global.world_seed, string_length(global.world_seed)));
var coor_last_digit = real(string_char_at(string(y), string_length(string(y))));
var max_sprite = 5;
var chosen_sprite = ((seed_last_digit + coor_last_digit) % max_sprite) + 1;
chosen_sprite = clamp(chosen_sprite, 1, max_sprite);
sprite_index = asset_get_index("spr_darkbough_floorslash_" + string(chosen_sprite));
