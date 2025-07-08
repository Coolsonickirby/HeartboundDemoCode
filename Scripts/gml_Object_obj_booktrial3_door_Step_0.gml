if (sprite_index == spr_booktrial_door_base)
{
    if (instance_exists(obj_booktrial3_laser_5a))
    {
        if (instance_exists(obj_booktrial3_laser_5b))
        {
            if (sprite_index != spr_booktrial_door_activate)
            {
                sprite_index = spr_booktrial_door_activate;
                scr_sound_play(snd_binder_dooropen, 0.2, 1, false);
            }
        }
    }
}
