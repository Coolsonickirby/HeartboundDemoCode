if (pattern_current < pattern_steps)
{
    with (obj_barghest_pattern_button_parent)
    {
        if (button_number == other.pattern_array[other.pattern_current])
        {
            sprite_index = sprite_closing;
            var button_sound = asset_get_index("snd_barghest_pattern_eye_" + string(button_number));
            scr_sound_play(button_sound, 0.25, 2, false);
            var current_graphic = instance_create_depth(x, y + 20, 0, obj_barghest_pattern_controlgraphic);
            
            if (instance_exists(obj_barghest_pattern_controlgraphic))
            {
                if (global.control_type == 1)
                {
                    current_graphic.sprite_index = spr_combat_controls_gamepad_big_symbols;
                    current_graphic.image_index = (button_number - 1) + (global.controller_type * 4);
                }
                else
                {
                    current_graphic.image_index = other.pattern_current;
                    
                    if (global.storyline_array[107] >= 2)
                    {
                        current_graphic.image_index = irandom_range(0, 5);
                        current_graphic.image_speed = 0.25;
                    }
                }
            }
        }
    }
    
    pattern_current += 1;
    alarm[3] = pattern_reset_delay;
}
else
{
    with (obj_barghest_pattern_button_parent)
    {
        if (button_number != 0)
        {
            button_allowed = 1;
        }
        else
        {
            sprite_index = sprite_closing;
            stay_open = 0;
        }
    }
    
    game_started = 1;
    alarm[4] = room_speed * 10;
    alarm[5] = 1;
    audio_sound_gain(snd_music_shadows_bitter, audio_store[1], 250);
    pattern_current = 0;
}
