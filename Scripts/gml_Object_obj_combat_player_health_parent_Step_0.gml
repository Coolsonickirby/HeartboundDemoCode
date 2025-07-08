colliding_bit = instance_place(round(x), round(y), obj_damage_bit);

if (colliding_bit != -4)
{
    if (colliding_bit.damage_target == object_get_parent(object_index))
    {
        with (colliding_bit)
        {
            global.player_hp_cur -= damage_amount;
            global.player_hp_cur = clamp(global.player_hp_cur, 0, global.player_hp_max);
            instance_destroy();
        }
    }
}
