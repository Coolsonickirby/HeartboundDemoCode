if (shadow_name != 0)
{
    if (instance_exists(obj_roomdark_parent))
        draw_self();
    else
        draw_sprite_ext(shadow_name, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
