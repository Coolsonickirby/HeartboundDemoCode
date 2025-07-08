depth = -y;
draw_self();

if (instance_exists(obj_booktrial1_laser_1b))
{
    if (laser_cast == 0)
        draw_sprite_ext(impact_sprite_1, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    else
        draw_sprite_ext(impact_sprite_2, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
