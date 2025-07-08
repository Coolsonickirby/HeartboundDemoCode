if (sprite_index == spr_booktrial_door_base)
{
    if (obj_booktrial1_text_1.sprite_index == spr_booktrial_script_3a)
    {
        if (obj_booktrial1_text_2.sprite_index == spr_booktrial_script_3b)
        {
            if (sprite_index != spr_booktrial_door_activate)
            {
                sprite_index = spr_booktrial_door_activate;
                scr_sound_play(snd_binder_dooropen, 0.2, 1, false);
            }
        }
    }
}
