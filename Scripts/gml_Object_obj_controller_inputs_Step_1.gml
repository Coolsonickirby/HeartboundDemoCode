scr_get_input();

if (global.start_key)
{
    if (room != menu_logo && room != menu_language)
    {
        if (!instance_exists(obj_controller_settings))
        {
            if (instance_exists(obj_button_settings))
            {
                settings_open(obj_button_settings.x, obj_button_settings.y);
            }
            else if (instance_exists(obj_lore))
            {
                settings_open(obj_lore.x, obj_lore.y);
            }
            else
            {
                cam_id = view_camera[view_current];
                cam_x = camera_get_view_x(cam_id);
                cam_y = camera_get_view_y(cam_id);
                cam_w = camera_get_view_width(cam_id);
                cam_h = camera_get_view_height(cam_id);
                cam_center_x = cam_x + (cam_w * 0.5);
                cam_center_y = cam_y + (cam_h * 0.5);
                settings_open(cam_center_x, cam_center_y);
            }
        }
        else if (obj_controller_settings.settings_active == 1 && obj_controller_settings.alarm[1] == -1 && obj_controller_settings.alarm[2] == -1)
        {
            settings_close();
        }
    }
}
