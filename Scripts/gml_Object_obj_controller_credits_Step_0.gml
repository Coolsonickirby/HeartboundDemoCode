if (global.accept_key_held)
{
    if (instance_exists(obj_credits_text))
    {
        with (obj_credits_text)
            speed = 5;
    }
    
    music_pitch += 0.01;
    music_pitch = clamp(music_pitch, 1, 1.5);
    audio_sound_pitch(snd_music_credits, music_pitch);
}
else
{
    if (instance_exists(obj_credits_text))
    {
        with (obj_credits_text)
            speed = 0.5;
    }
    
    music_pitch -= 0.01;
    music_pitch = clamp(music_pitch, 1, 1.5);
    audio_sound_pitch(snd_music_credits, music_pitch);
}

if (global.cancel_key)
{
    scr_sound_play(snd_darkworld_shatter, 0.3, random_range(0.8, 1), false);
    
    if (instance_exists(obj_credits_text))
    {
        with (obj_credits_text)
        {
            alarm[1] = 1;
            alarm[0] = -1;
        }
    }
    
    alarm[0] = -1;
    
    if (instance_exists(obj_fade_credits))
    {
        with (obj_fade_credits)
            instance_destroy();
    }
    
    with (instance_create_depth(x, y, 0, obj_fade_credits))
    {
        player_x = 0;
        player_y = 0;
        next_room = menu_main;
        next_color = 0;
        fadein_timer = 0.02;
        fadeout_timer = 0.02;
        fadepause_timer = 1;
        fadeout_amount = 0.1;
        fadein_amount = 0.1;
        fade_out = true;
        alarm[1] = room_speed * fadeout_timer;
    }
    
    audio_stop_sound(snd_music_menu_intro);
    audio_stop_sound(snd_music_menu_loop);
    audio_stop_sound(snd_music_credits);
    
    if (instance_exists(obj_credits_music))
    {
        with (obj_credits_music)
            instance_destroy();
    }
    
    instance_destroy();
}
