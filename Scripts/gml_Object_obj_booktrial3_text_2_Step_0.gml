if (sprite_index == spr_booktrial_script_1b)
{
    if (instance_exists(obj_booktrial3_laser_5b) || instance_exists(obj_booktrial3_laser_9b))
        sprite_index = spr_booktrial_script_2b;
}
else if (!instance_exists(obj_booktrial3_laser_5b) && !instance_exists(obj_booktrial3_laser_9b))
{
    sprite_index = spr_booktrial_script_1b;
}
