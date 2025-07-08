draw_set_alpha(alpha);
draw_rectangle_color(camera_get_view_x(view_camera[view_current]) - 10, camera_get_view_y(view_camera[view_current]) - 10, camera_get_view_x(view_camera[view_current]) + camera_get_view_width(view_camera[view_current]) + 10, camera_get_view_y(view_camera[view_current]) + camera_get_view_height(view_camera[view_current]) + 10, next_color, next_color, next_color, next_color, false);
draw_set_alpha(1);
