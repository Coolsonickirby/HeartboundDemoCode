function settings_close()
{
    with (obj_controller_settings)
    {
        global.cursor_active = menu_last_mouse;
        
        with (obj_mouse)
            image_alpha = global.cursor_active;
        
        size_step *= 2;
        alarm[2] = 1;
    }
}
