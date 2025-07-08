if (sprite_index == spr_booktrial_script_1a)
{
    if (instance_exists(obj_booktrial2_laser_3a))
        sprite_index = spr_booktrial_script_2a;
}
else if (!instance_exists(obj_booktrial2_laser_3a))
{
    sprite_index = spr_booktrial_script_1a;
}
