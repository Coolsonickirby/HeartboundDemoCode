if (talking_state == 0)
{
    scr_talk();
}
else
{
    if (sprite_index == spr_save_book_closed)
    {
        scr_sound_play(snd_save_book_open, 0.2, 1, false);
        sprite_index = spr_save_book_opening;
        image_index = 0;
    }
    
    if (question_true == 1 && question_asked == 0)
    {
        question_asked = 1;
        
        switch (next_step)
        {
            case 2:
                activate_dialog_options(2, 2, 3, 0, 0);
                break;
            
            case 6:
                activate_dialog_options(2, 6, 7, 0, 0);
                break;
        }
    }
    
    if (global.current_talker == id)
    {
        if (options_state == 0)
        {
            if ((global.accept_key && text_complete == 1) || question_answered == 1 || text_timer_bypass == 1)
            {
                question_answered = 0;
                text_complete = 0;
                
                switch (next_step)
                {
                    case 1:
                        next_step = 2;
                        cur_message = 4001;
                        question_true = 1;
                        activate_dialog();
                        break;
                    
                    case 2:
                        cur_message = 4000;
                        question_true = 0;
                        question_asked = 0;
                        question_answered = 0;
                        sprite_index = spr_save_book_closing;
                        image_index = 0;
                        end_dialog();
                        break;
                    
                    case 3:
                        save_location(room, x, y + 5);
                        save_game();
                        audio_store[1] = audio_sound_get_gain(snd_rain);
                        audio_store[2] = audio_sound_get_gain(snd_insidewind);
                        audio_store[3] = audio_sound_get_gain(snd_outsidewind);
                        audio_store[4] = audio_sound_get_gain(snd_stormrain);
                        audio_store[5] = audio_sound_get_gain(snd_music_shadows_sonata);
                        audio_sound_gain(snd_rain, 0, 0);
                        audio_sound_gain(snd_insidewind, 0, 0);
                        audio_sound_gain(snd_outsidewind, 0, 0);
                        audio_sound_gain(snd_stormrain, 0, 0);
                        audio_sound_gain(snd_music_shadows_sonata, audio_store[5] * 0.5, 0);
                        scr_sound_play(snd_save_complete, 0.3, 1, false);
                        audio_sound_gain(snd_rain, audio_store[1], 500);
                        audio_sound_gain(snd_insidewind, audio_store[2], 500);
                        audio_sound_gain(snd_outsidewind, audio_store[3], 500);
                        audio_sound_gain(snd_stormrain, audio_store[4], 500);
                        audio_sound_gain(snd_music_shadows_sonata, audio_store[5], 500);
                        next_step = 4;
                        cur_message = 4002;
                        question_true = 0;
                        question_asked = 0;
                        question_answered = 0;
                        activate_dialog();
                        break;
                    
                    case 4:
                        next_step = 5;
                        cur_message = 4003;
                        activate_dialog();
                        break;
                    
                    case 5:
                        next_step = 6;
                        cur_message = 4004;
                        question_true = 1;
                        activate_dialog();
                        break;
                    
                    case 6:
                        cur_message = 4000;
                        question_true = 0;
                        question_asked = 0;
                        question_answered = 0;
                        sprite_index = spr_save_book_closing;
                        image_index = 0;
                        end_dialog();
                        break;
                    
                    case 7:
                        question_true = 0;
                        question_asked = 0;
                        question_answered = 0;
                        instance_create_depth(x, y, 0, obj_save_fade);
                        end_dialog();
                        break;
                }
            }
        }
    }
}

if (y <= (camera_get_view_y(view_camera[view_current]) + (camera_get_view_height(view_camera[view_current]) / 2)))
    text_location = 0;
else
    text_location = 2;
