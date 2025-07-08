with (obj_portals_talker_event)
{
    if (global.storyline_array[107] >= 3 && global.storyline_array[71] == 2)
        cur_message = 16;
    else
        cur_message = 13;
    
    text_location = 5;
    dialog_step = 8;
    text_border = 0;
    text_skip = 0;
    text_fade = 1;
    activate_dialog();
}

audio_stop_sound(snd_music_binder_weird);
