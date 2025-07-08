if (sprite_index == spr_baron_float_up)
{
    sprite_index = spr_baron_float_still;
    image_index = 0;
}

if (sprite_index == spr_baron_corrupt)
{
    sprite_index = spr_baron_crack;
    image_index = 0;
}
else if (sprite_index == spr_baron_crack)
{
    scr_sound_play(snd_darkworld_cracks, 0.5, 0.8, false);
    scr_screenshake(2, 0.5, 0);
    sprite_index = spr_baron_cracked;
    image_index = 0;
    
    with (obj_portals_lore)
        alarm[5] = room_speed * 0.5;
    
    audio_stop_sound(snd_barghest_dodge_blast);
}
