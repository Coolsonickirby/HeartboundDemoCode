event_inherited();
var seed_last_digit = real(string_char_at(global.world_seed, string_length(global.world_seed)));
var coor_last_digit = real(string_char_at(string(y), string_length(string(y))));
var max_sprite = 3;
var chosen_sprite = ((seed_last_digit + coor_last_digit) % max_sprite) + 1;
chosen_sprite = clamp(chosen_sprite, 1, max_sprite);
sprite_index = asset_get_index("spr_yard_flower_" + string(chosen_sprite));

if (global.storyline_array[25] == 2)
    sprite_index = asset_get_index("spr_yard_flower_trashed_" + string(chosen_sprite));
