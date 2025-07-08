depth = (-y - (sprite_height * 0.5)) + 1;

if (visible == true)
{
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    scr_draw_light();
}
