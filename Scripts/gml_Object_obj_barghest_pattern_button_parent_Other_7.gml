if (stay_open == 1)
{
    if (sprite_index == sprite_opening)
    {
        sprite_index = sprite_open;
        
        if (button_number == 0)
        {
            if (button_fail == 1)
            {
                if (attack_fired == 0)
                {
                    attack_fired = 1;
                    instance_create_depth(x, y, 0, obj_barghest_pattern_attack);
                    audio_stop_sound(snd_barghest_pattern_charge);
                    scr_sound_play(snd_barghest_pattern_blast, 0.3, 1, true);
                }
            }
        }
    }
    else if (sprite_index == sprite_closing)
    {
        sprite_index = sprite_opening;
    }
}
else if (sprite_index == sprite_closing)
{
    sprite_index = sprite_closed;
}
