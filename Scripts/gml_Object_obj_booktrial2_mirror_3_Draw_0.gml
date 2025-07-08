if (mirror_rotation == 1)
    sprite_index = rotation_sprite_1;
else
    sprite_index = rotation_sprite_2;

draw_self();

if (mirror_rotation == 0)
    draw_sprite_ext(impact_sprite_8, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
else
    draw_sprite_ext(impact_sprite_4, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
