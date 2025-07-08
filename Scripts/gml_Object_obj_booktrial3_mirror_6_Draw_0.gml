depth = -y;
draw_self();

if (instance_exists(obj_booktrial3_laser_7b))
{
    if (laser_cast == 0)
        draw_sprite_ext(impact_sprite_2, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    else
        draw_sprite_ext(impact_sprite_4, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
else if (instance_exists(obj_booktrial3_laser_3a))
{
    if (laser_cast == 0)
        draw_sprite_ext(impact_sprite_1, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    else
        draw_sprite_ext(impact_sprite_3, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
else
{
    push_horizontal_flag = 1;
}
