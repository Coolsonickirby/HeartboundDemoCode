audio_stop_sound(snd_barghest_dodge_charge);
alarm[1] = 0;

if (instance_exists(obj_barghest_dodge_lore_parent))
{
    with (obj_barghest_dodge_lore_parent)
        instance_destroy();
}

if (instance_exists(obj_lore_combat))
{
    with (obj_lore_combat)
        image_alpha = 1;
}

alarm[5] = room_speed * 0.5;
