if (button_active == 1)
{
    if (button_active_last == 0)
    {
        button_active_last = 1;
        scr_sound_play(button_sound, 0.025, 1, false);
    }
}
else
{
    button_active_last = 0;
}
