if (instance_exists(obj_controller_settings))
{
    if (global.accept_key)
    {
        var cam_x = obj_controller_settings.cam_x;
        var cam_y = obj_controller_settings.cam_y;
        
        if (position_meeting(mouse_x - cam_x, mouse_y - cam_y, object_index))
        {
            scr_sound_play(snd_voice_frog, 0.2, random_range(0.9, 1.1), false);
            global.storyline_array[411] += 1;
            
            if (global.storyline_array[411] >= 20)
                steam_set_achievement("GLOBAL_FROG");
        }
    }
}
