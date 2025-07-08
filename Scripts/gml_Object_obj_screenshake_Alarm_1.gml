switch (shake_direction)
{
    case 0:
        camera_set_view_pos(view_camera[view_current], shake_start_x + random_range(-shake_intensity, shake_intensity), shake_start_y + random_range(-shake_intensity, shake_intensity));
        break;
    
    case 1:
        camera_set_view_pos(view_camera[view_current], shake_start_x + random_range(-shake_intensity, shake_intensity), shake_start_y);
        break;
    
    case 2:
        camera_set_view_pos(view_camera[view_current], shake_start_x, shake_start_y + random_range(-shake_intensity, shake_intensity));
        break;
}

alarm[1] = 1;
