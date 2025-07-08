if (instance_exists(obj_music_parent))
{
    if (obj_music_parent.effect_active == 1)
    {
        if (alarm[0] == -1)
        {
            fade_timer = 100;
            effect_blend = 13826810;
            alarm[0] = 1;
        }
    }
}

gpu_set_blendmode_ext(9, bm_zero);
draw_ellipse_color(-300, -150, 940, 510, object_color, #4B4B4B, false);
gpu_set_blendmode(bm_normal);

if (fade_timer != 0)
{
    gpu_set_blendmode_ext(9, bm_one);
    draw_rectangle_color(0, 0, room_width, room_height, effect_blend, effect_blend, effect_blend, effect_blend, false);
    gpu_set_blendmode(bm_normal);
}
