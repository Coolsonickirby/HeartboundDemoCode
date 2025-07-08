with (other)
{
    gpu_set_blendmode_ext(9, bm_zero);
    draw_rectangle_colour(0, 0, room_width, room_height, effect_blend, effect_blend, effect_blend, effect_blend, false);
    gpu_set_blendmode(bm_normal);
}
