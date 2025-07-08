if (global.storyline_array[25] == 0)
{
    if (global.storyline_array[story_index] == 0)
        draw_sprite_ext(spr_yard_window_dark, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    else
        draw_sprite_ext(spr_yard_window_bright, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
else
{
    draw_sprite_ext(spr_yard_window_dark, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
