function scr_handle_mouse(arg0, arg1)
{
    var mouse_active = arg0;
    var mouse_center = arg1;
    
    switch (mouse_active)
    {
        case true:
            if (global.cursor_active == 0)
            {
                if (mouse_center == true)
                    window_mouse_set(window_get_width() * 0.5, window_get_height() * 0.5);
                
                if (instance_exists(obj_mouse))
                {
                    with (obj_mouse)
                    {
                        alarm[0] = 1;
                        alarm[1] = 0;
                    }
                }
            }
            
            break;
        
        case false:
            global.cursor_active = 0;
            
            if (instance_exists(obj_mouse))
            {
                with (obj_mouse)
                {
                    alarm[0] = 0;
                    alarm[1] = 1;
                }
            }
            
            break;
    }
}
