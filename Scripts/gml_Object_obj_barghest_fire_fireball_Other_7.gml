if (sprite_index == spr_barghest_fire_fireball_entrance)
{
    sprite_index = spr_barghest_fire_fireball_travel;
    image_index = 0;
    direction = 270;
    speed = 2;
}
else if (sprite_index == spr_barghest_fire_fireball_explosion)
{
    instance_destroy();
}
