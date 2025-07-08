if (sprite_index == spr_booktrial_script_1b)
{
    if (instance_exists(obj_booktrial2_laser_3b))
        sprite_index = spr_booktrial_script_2b;
}
else if (!instance_exists(obj_booktrial2_laser_3b))
{
    sprite_index = spr_booktrial_script_1b;
}
