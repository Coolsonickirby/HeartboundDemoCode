if (global.darkening_active == 1)
{
    gpu_set_blendmode_ext(9, bm_zero);
    var color_slice = 255 - (room_fade * 255);
    var color_whole = make_color_rgb(color_slice, color_slice, color_slice);
    
    if (instance_exists(obj_view))
    {
        draw_x = obj_view.x;
        draw_y = obj_view.y;
        draw_x = clamp(draw_x, 40, 600);
    }
    
    draw_ellipse_color(draw_x - 600, draw_y - 300, draw_x + 600, draw_y + 300, c_white, color_whole, false);
    gpu_set_blendmode(bm_normal);
}
