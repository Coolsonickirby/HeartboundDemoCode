if (instance_exists(obj_booktrial1_laser_2a))
{
    sprite_index = light_on;
    
    with (obj_music_parent)
        audio_sound_gain(music_new[1], 0.2, 500);
}
else
{
    sprite_index = light_off;
    
    with (obj_music_parent)
        audio_sound_gain(music_new[1], 0, 500);
}
