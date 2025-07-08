if (sprite_index == spr_booktrial_script_1b)
{
    if (obj_booktrial2_text_4.sprite_index == spr_booktrial_script_3b)
        sprite_index = spr_booktrial_script_2b;
}
else if (!instance_exists(obj_booktrial2_laser_3b))
{
    sprite_index = spr_booktrial_script_1b;
}

if (instance_exists(obj_booktrial2_laser_4b))
{
    instance_create_depth(x, y, 0, obj_booktrial2_text_3a);
    instance_create_depth(x, y, 0, obj_booktrial2_text_3b);
    instance_destroy();
}
