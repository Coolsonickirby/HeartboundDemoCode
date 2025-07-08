if (mirror_rotation == 0)
    sprite_index = rotation_sprite_1;
else
    sprite_index = rotation_sprite_2;

draw_self();

if (instance_exists(obj_booktrial2_mirror_1))
{
    if (obj_booktrial2_mirror_1.mirror_rotation == 1)
    {
        if (mirror_rotation == 0)
            draw_sprite_ext(impact_sprite_2, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        else
            draw_sprite_ext(impact_sprite_5, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
}
