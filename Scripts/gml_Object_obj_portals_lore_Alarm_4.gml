with (obj_portals_talker_event)
{
    text_location = 7;
    text_flipped = 1;
    dialog_step = 5;
    cur_message = 7;
    text_border = 0;
    text_skip = 0;
    text_fade = 1;
    
    with (obj_portals_tome)
    {
        sprite_index = spr_portals_tome_beam_base;
        scr_sound_play(snd_barghest_dodge_charge, 0.1, 1.2, true);
    }
    
    activate_dialog();
}
