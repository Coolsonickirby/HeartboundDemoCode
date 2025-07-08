with (obj_barghest_combat_parent)
    color_target = 16777215;

if (instance_exists(obj_barghest_pattern_attack))
{
    with (obj_barghest_pattern_attack)
    {
        audio_stop_sound(snd_barghest_pattern_blast);
        instance_destroy();
    }
}

with (obj_barghest_pattern_button_parent)
{
    position_set = 0;
    position_step = 2;
    target_position = y - 200;
    direction = 90;
    speed = 6;
}

with (obj_barghest_pattern_base)
{
    position_set = 0;
    position_step = 2;
    target_position = y - 200;
    direction = 90;
    speed = 6;
}

instance_destroy();
