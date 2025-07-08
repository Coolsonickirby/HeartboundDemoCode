camera_set_view_pos(view_current, shake_start_x, shake_start_y);
camera_set_view_target(view_camera[view_current], start_obj);
alarm[1] = -1;
instance_destroy();
