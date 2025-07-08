if (position_step == 1)
{
    if (position_set == 0)
    {
        if (y > target_position)
        {
            speed = 0;
            y = target_position;
            
            with (obj_barghest_pattern_button_parent)
                sprite_index = sprite_opening;
            
            with (obj_barghest_pattern_game)
            {
                alarm[3] = pattern_reset_delay;
                audio_store[1] = audio_sound_get_gain(snd_music_shadows_bitter);
                audio_sound_gain(snd_music_shadows_bitter, audio_store[1] * 0.5, 0);
            }
            
            position_set = 1;
        }
    }
}
else if (position_step == 2)
{
    if (y < target_position)
        instance_destroy();
}
