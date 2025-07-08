if (instance_exists(obj_lore))
{
    with (obj_lore)
        instance_change(obj_barghest1_lore_entrance, true);
    
    instance_destroy();
}
else
{
    alarm[1] = 1;
}
