watch_finished = 0;

if (watch_move_cur > watch_move_min)
{
    draw_x = camera_get_view_x(view_camera[view_current]) + (sprite_width * 0.6);
    draw_y = ((camera_get_view_y(view_camera[view_current]) + (sprite_height * 0.6)) - watch_move_max) + watch_move_cur;
    watch_move_cur -= 2;
    alarm[1] = 1;
}
else
{
    watch_move_cur = watch_move_min;
    image_alpha = 0;
}
