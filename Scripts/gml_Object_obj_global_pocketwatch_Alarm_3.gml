watch_finished = 1;
watch_move_cur = watch_move_max;
draw_x = camera_get_view_x(view_camera[view_current]) + (sprite_width * 0.6);
draw_y = ((camera_get_view_y(view_camera[view_current]) + (sprite_height * 0.6)) - watch_move_max) + watch_move_cur;
image_alpha = 1;
