if (sprite_index == spr_booktrial_door_base)
{
    if (obj_booktrial2_text_2.sprite_index == spr_booktrial_script_3a)
    {
        if (instance_exists(obj_booktrial2_text_3))
        {
            if (obj_booktrial2_text_3.sprite_index == spr_booktrial_script_3b)
            {
                if (sprite_index != spr_booktrial_door_activate)
                {
                    sprite_index = spr_booktrial_door_activate;
                    scr_sound_play(snd_binder_dooropen, 0.2, 1, false);
                }
            }
        }
        else if (obj_booktrial2_text_4.sprite_index == spr_booktrial_script_3b)
        {
            if (sprite_index != spr_booktrial_door_activate)
            {
                sprite_index = spr_booktrial_door_activate;
                scr_sound_play(snd_binder_dooropen, 0.2, 1, false);
            }
        }
    }
}
