if (sprite_index == spr_booktrial_script_1a)
{
    if (instance_exists(obj_booktrial1_laser_2a))
        sprite_index = spr_booktrial_script_2a;
}
else if (!instance_exists(obj_booktrial1_laser_2a))
{
    sprite_index = spr_booktrial_script_1a;
}
