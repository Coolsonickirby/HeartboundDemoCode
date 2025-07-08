event_inherited();
image_speed = random_range(0.15, 0.2);
var max_sprite = 6;
var seed_last_digit = real(string_char_at(global.world_seed, string_length(global.world_seed)));
var coor_last_digit = real(string_char_at(string(y), string_length(string(y))));
var chosen_sprite = ((seed_last_digit + coor_last_digit) % max_sprite) + 1;
chosen_sprite = clamp(chosen_sprite, 1, max_sprite);
var max_direction = 2;
seed_last_digit = real(string_char_at(global.world_seed, string_length(global.world_seed)));
coor_last_digit = real(string_char_at(string(y), string_length(string(y))));
var chosen_direction = ((seed_last_digit + coor_last_digit) % max_direction) + 1;
chosen_direction = clamp(chosen_direction, 1, max_direction);
sprite_index = asset_get_index("spr_darkworld_tentacle_" + string(chosen_sprite));

switch (chosen_direction)
{
    case 1:
        image_xscale = 1;
        break;
    
    case 2:
        image_xscale = -1;
        break;
}
