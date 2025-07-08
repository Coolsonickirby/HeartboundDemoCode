if (global.conv_talking == 0 && global.current_menu != 3)
    instance_destroy();

if (activated == 1)
{
    image_index = 1;
    
    if (last_active == 0)
    {
        last_active = 1;
        
        if (button_sound != 0)
            scr_sound_play(button_sound, 0.025, 1, false);
    }
}
else
{
    image_index = 0;
    last_active = 0;
}
