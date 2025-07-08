if (target_active == 1)
{
    target_value += target_speed;
    
    if (target_value > 0.98)
    {
        target_value = 0.98;
        
        if (current_bounces >= total_bounces)
        {
            target_active = 0;
            
            with (obj_game_parent)
                alarm[0] = 1;
        }
        else
        {
            target_speed = -target_speed;
            current_bounces++;
            scr_sound_play(snd_barghest_pattern_timer, 0.2, (current_bounces * 1) + 0.5, false);
        }
    }
    else if (target_value < 0.02)
    {
        target_value = 0.02;
        
        if (current_bounces >= total_bounces)
        {
            target_active = 0;
            
            with (obj_game_parent)
                alarm[0] = 1;
        }
        else
        {
            target_speed = -target_speed;
            current_bounces++;
            scr_sound_play(snd_barghest_pattern_timer, 0.2, (current_bounces * 1) + 0.5, false);
        }
    }
    
    if (global.accept_key)
    {
        target_active = 0;
        
        with (obj_game_parent)
        {
            alarm[4] = -1;
            alarm[5] = -1;
        }
        
        if (target_value >= target_min && target_value <= target_max)
        {
            audio_store[1] = audio_sound_get_gain(snd_music_shadows_bitter);
            audio_sound_gain(snd_music_shadows_bitter, audio_store[1] * 0.5, 0);
            scr_sound_play(snd_combat_throw, 0.4, 0.5, false);
            audio_sound_gain(snd_music_shadows_bitter, audio_store[1], 250);
            
            with (obj_barghest_throw_stick)
            {
                sprite_index = sprite_throw;
                
                switch (obj_game_parent.weapon_type)
                {
                    case "stick":
                        image_speed = 0.35;
                        break;
                    
                    case "axe":
                        image_speed = 0.38;
                        break;
                }
                
                direction = 90;
                speed = 5;
                obj_barghest_throw_stick.alarm[0] = room_speed * 0.5;
            }
        }
        else
        {
            with (obj_game_parent)
                alarm[0] = 1;
        }
    }
}

switch (target_pos)
{
    case 0:
        if (x < target_x_1)
        {
            x += 2;
        }
        else
        {
            target_pos = 2;
            x = target_x_1;
        }
        
        break;
    
    case 1:
        if (x > target_x_2)
            x -= 2;
        else
            instance_destroy();
        
        break;
}
