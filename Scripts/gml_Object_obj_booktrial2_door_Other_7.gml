if (sprite_index == spr_booktrial_door_activate)
{
    sprite_index = spr_booktrial_door_opening;
}
else if (sprite_index == spr_booktrial_door_opening)
{
    image_speed = 0;
    image_index = image_number - 1;
    
    if (instance_exists(obj_booktrial2_doorblock))
    {
        with (obj_booktrial2_doorblock)
            instance_destroy();
    }
}
