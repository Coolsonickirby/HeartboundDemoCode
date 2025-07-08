if (activated == 1)
{
    image_blend = button_color;
    
    if (last_active == 0)
    {
        last_active = 1;
        
        if (button_sound != 0)
            scr_sound_play(button_sound, 0.025, 1, false);
    }
}
else
{
    image_blend = button_color_end;
    last_active = 0;
}
