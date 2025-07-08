gpu_set_blendmode_ext(9, bm_zero);
var draw_x = camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) * 0.5);
var draw_y = camera_get_view_y(view_camera[view_current]) + (camera_get_view_height(view_camera[view_current]) * 0.5);
draw_ellipse_color(draw_x - 600, draw_y - 300, draw_x + 600, draw_y + 300, c_white, c_black, false);
gpu_set_blendmode(bm_normal);
draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
