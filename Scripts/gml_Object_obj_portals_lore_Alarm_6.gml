with (obj_portals_talker_event)
{
    if (global.storyline_array[107] >= 3 && global.storyline_array[71] == 2)
        cur_message = 15;
    else
        cur_message = 12;
    
    dialog_step = 7;
    text_border = 1;
    text_skip = 1;
    text_fade = 0;
    activate_dialog();
}
