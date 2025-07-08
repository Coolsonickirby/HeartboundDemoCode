if (instance_exists(obj_booktrial3_laser_5a))
{
    sprite_index = light_on_1;
    
    with (obj_music_parent)
        audio_sound_gain(music_new[1], 0.2, 500);
}
else if (instance_exists(obj_booktrial3_laser_9b))
{
    sprite_index = light_on_2;
    
    with (obj_music_parent)
        audio_sound_gain(music_new[2], 0.2, 500);
}
else
{
    sprite_index = light_off;
    
    if (!instance_exists(obj_booktrial3_laser_5b))
    {
        with (obj_music_parent)
        {
            audio_sound_gain(music_new[1], 0, 500);
            audio_sound_gain(music_new[2], 0, 500);
        }
    }
}
