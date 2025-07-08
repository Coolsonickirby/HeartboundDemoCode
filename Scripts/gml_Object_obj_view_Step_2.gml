if (follow_player == 1)
{
    if (instance_exists(follow_object))
    {
        x = round(follow_object.x);
        y = round(follow_object.y);
    }
}

if (global.steam_screenshots == 1)
{
    if (steam_is_screenshot_requested())
    {
        var file = "Heartbound_" + string(screenshot_number) + ".png";
        screen_save(file);
        steam_send_screenshot(file, window_get_width(), window_get_height());
        screenshot_number += 1;
    }
}

if (global.debug_version == 1)
{
    if (keyboard_check_pressed(vk_space))
    {
        save_location(room, x, y);
        save_game();
    }
    
    if (keyboard_check_pressed(vk_control))
    {
        if (audio_debug_enabled == false)
            audio_debug_enabled = true;
        else
            audio_debug_enabled = false;
        
        show_debug_overlay(audio_debug_enabled);
    }
    
    if (keyboard_check_pressed(vk_alt))
    {
        if (instance_exists(obj_view))
        {
            with (obj_view)
            {
                if (shader_active == 0)
                    shader_active = 1;
                else
                    shader_active = 0;
            }
        }
    }
    
    if (keyboard_check_pressed(vk_lshift))
    {
        if (global.darkening_active == 0)
            global.darkening_active = 1;
        else
            global.darkening_active = 0;
    }
}
