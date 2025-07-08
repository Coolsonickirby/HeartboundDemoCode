if (instance_exists(obj_booktrial3_laser_5b))
{
    sprite_index = light_on;
    
    with (obj_music_parent)
        audio_sound_gain(music_new[2], 0.2, 500);
}
else
{
    sprite_index = light_off;
    
    with (obj_music_parent)
        audio_sound_gain(music_new[2], 0, 500);
}
