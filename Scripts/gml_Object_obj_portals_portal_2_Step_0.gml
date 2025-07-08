if (activated)
{
    with (obj_portal_parent)
    {
        if (portal_number == other.portal_selected)
        {
            alarm[0] = 1;
            alarm[1] = 0;
        }
    }
    
    if (audio_sound_get_gain(sound_file) == 0)
        audio_sound_gain(sound_file, 0.25, 250);
}
else
{
    with (obj_portal_parent)
    {
        if (portal_number == other.portal_selected)
        {
            alarm[0] = 0;
            alarm[1] = 1;
        }
    }
    
    if (audio_sound_get_gain(sound_file) != 0)
        audio_sound_gain(sound_file, 0, 250);
}
