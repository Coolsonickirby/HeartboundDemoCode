function scr_screenshake(arg0, arg1, arg2)
{
    shake_intensity = arg0;
    shake_duration = room_speed * arg1;
    shake_direction = arg2;
    shake_x = camera_get_view_x(view_camera[view_current]);
    shake_y = camera_get_view_y(view_camera[view_current]);
    
    if (instance_exists(obj_screenshake))
    {
        with (obj_screenshake)
        {
            other.shake_x = shake_start_x;
            other.shake_y = shake_start_y;
            camera_set_view_pos(view_current, shake_start_x, shake_start_y);
            camera_set_view_target(view_camera[view_current], start_obj);
            
            if (global.gamepad_index != -100)
                gamepad_set_vibration(0, 0, 0);
            
            instance_destroy();
        }
    }
    
    with (instance_create_depth(obj_view.x, obj_view.y, 0, obj_screenshake))
    {
        shake_intensity = other.shake_intensity;
        shake_duration = other.shake_duration;
        shake_direction = other.shake_direction;
        shake_start_x = other.shake_x;
        shake_start_y = other.shake_y;
        
        if (global.gamepad_index != -100)
            gamepad_set_vibration(0, shake_intensity / 10, shake_intensity / 10);
        
        start_obj = camera_get_view_target(view_camera[view_current]);
        camera_set_view_target(view_camera[view_current], -4);
        alarm[0] = shake_duration;
        alarm[1] = 1;
    }
}
