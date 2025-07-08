if (talking_state == 0)
{
    scr_talk();
}
else
{
    if (audio_altered == 0)
    {
        audio_altered = 1;
        audio_store[1] = audio_sound_get_gain(snd_rain);
        audio_store[2] = audio_sound_get_gain(snd_insidewind);
        audio_store[3] = audio_sound_get_gain(snd_outsidewind);
        audio_store[4] = audio_sound_get_gain(snd_stormrain);
        audio_store[5] = audio_sound_get_gain(snd_music_shadows_sonata);
        audio_sound_gain(snd_rain, 0, 200);
        audio_sound_gain(snd_insidewind, 0, 200);
        audio_sound_gain(snd_outsidewind, 0, 200);
        audio_sound_gain(snd_stormrain, 0, 200);
        audio_sound_gain(snd_music_shadows_sonata, audio_store[5] * 0.3, 200);
    }
    
    if (global.current_talker == id)
    {
        if (options_state == 0)
        {
            if (global.accept_key && text_complete == 1)
            {
                text_complete = 0;
                
                switch (next_step)
                {
                    case 1:
                        if (global.storyline_array[107] < 2)
                        {
                            next_step = 2;
                            cur_message = 37;
                            activate_dialog();
                        }
                        else
                        {
                            next_step = 4;
                            cur_message = 39;
                            activate_dialog();
                        }
                        
                        break;
                    
                    case 2:
                        next_step = 3;
                        cur_message = 38;
                        activate_dialog();
                        break;
                    
                    case 3:
                        global.storyline_array[33] = 1;
                        audio_sound_gain(snd_rain, audio_store[1], 1000);
                        audio_sound_gain(snd_insidewind, audio_store[2], 1000);
                        audio_sound_gain(snd_outsidewind, audio_store[3], 1000);
                        audio_sound_gain(snd_stormrain, audio_store[4], 1000);
                        audio_sound_gain(snd_music_shadows_sonata, audio_store[5], 1000);
                        end_dialog();
                        instance_destroy();
                        break;
                    
                    case 4:
                        global.storyline_array[33] = 1;
                        audio_sound_gain(snd_rain, audio_store[1], 1000);
                        audio_sound_gain(snd_insidewind, audio_store[2], 1000);
                        audio_sound_gain(snd_outsidewind, audio_store[3], 1000);
                        audio_sound_gain(snd_stormrain, audio_store[4], 1000);
                        audio_sound_gain(snd_music_shadows_sonata, audio_store[5], 1000);
                        end_dialog();
                        instance_destroy();
                        break;
                }
            }
        }
    }
}
