obj_barghest_combat_parent.color_target = 16777215;

with (obj_barghest_fire_stick)
    instance_destroy();

if (instance_exists(obj_barghest_fire_fireball))
{
    with (obj_barghest_fire_fireball)
    {
        if (sprite_index != spr_barghest_fire_fireball_explosion)
            instance_destroy();
    }
}

alarm[0] = 0;
alarm[1] = 0;
alarm[2] = 0;
alarm[3] = 0;
obj_combat_parent.activate_game = 1;
instance_destroy();
