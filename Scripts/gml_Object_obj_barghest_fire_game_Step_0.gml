if (alarm[1] == -1)
{
    if (global.left_key)
    {
        if (attack_side == 1)
        {
            attack_side = 0;
            obj_barghest_fire_stick.sprite_index = obj_barghest_fire_stick.left_swing;
            obj_barghest_fire_stick.image_speed = 1;
            alarm[1] = room_speed * 0.2;
            scr_sound_play(snd_global_woosh, 0.15, random_range(0.95, 1.05), false);
        }
    }
    else if (global.right_key)
    {
        if (attack_side == 0)
        {
            attack_side = 1;
            obj_barghest_fire_stick.sprite_index = obj_barghest_fire_stick.right_swing;
            obj_barghest_fire_stick.image_speed = 1;
            alarm[1] = room_speed * 0.2;
            scr_sound_play(snd_global_woosh, 0.15, random_range(0.95, 1.05), false);
        }
    }
}
