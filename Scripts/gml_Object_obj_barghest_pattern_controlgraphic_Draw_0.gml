draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
image_alpha -= 0.02;
y += 0.3;

if (image_alpha <= 0)
    instance_destroy();
