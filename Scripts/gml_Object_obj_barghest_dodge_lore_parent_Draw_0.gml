if (instance_exists(obj_barghest_dodge_game))
{
    if (obj_barghest_dodge_game.dodge_position == draw_position)
        draw_self();
}
else
{
    instance_destroy();
}
