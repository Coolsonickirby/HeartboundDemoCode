scr_sound_play(snd_barghest_pattern_charge, 0.3, 2, false);

with (obj_barghest_pattern_button_parent)
{
    if (sprite_index != sprite_open)
    {
        sprite_index = sprite_opening;
        stay_open = 1;
    }
    
    button_allowed = 0;
    button_alpha = 0;
    button_fail = 1;
}

alarm[2] = room_speed;
