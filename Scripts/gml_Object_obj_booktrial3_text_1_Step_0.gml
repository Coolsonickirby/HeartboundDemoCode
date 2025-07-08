if (sprite_index == spr_booktrial_script_1a)
{
    if (instance_exists(obj_booktrial3_laser_5a))
        sprite_index = spr_booktrial_script_2a;
}
else if (!instance_exists(obj_booktrial3_laser_5a))
{
    sprite_index = spr_booktrial_script_1a;
}
