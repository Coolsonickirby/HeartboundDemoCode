if (activated == 1)
{
    if (last_active == 0)
    {
        last_active = 1;
        
        if (button_sound != 0)
            scr_sound_play(button_sound, 0.025, 1, false);
    }
}
else
{
    last_active = 0;
}
