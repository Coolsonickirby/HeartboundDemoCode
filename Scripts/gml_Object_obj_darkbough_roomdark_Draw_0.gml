gpu_set_blendmode_ext(9, bm_zero);
draw_rectangle_color(0, 0, room_width, room_height, object_color, object_color, object_color, object_color, false);
gpu_set_blendmode(bm_normal);

if (fade_timer != 0)
{
    gpu_set_blendmode_ext(9, bm_one);
    draw_rectangle_color(0, 0, room_width, room_height, effect_blend, effect_blend, effect_blend, effect_blend, false);
    gpu_set_blendmode(bm_normal);
}
