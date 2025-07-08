draw_self();

if (instance_exists(obj_booktrial3_laser_1b))
    draw_sprite_ext(impact_sprite_1, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (instance_exists(obj_booktrial3_laser_8b))
    draw_sprite_ext(impact_sprite_3, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (instance_exists(obj_booktrial3_laser_4a))
    draw_sprite_ext(impact_sprite_2, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
