with (obj_portals_talker_event)
{
    text_location = 0;
    dialog_step = 4;
    cur_message = 5;
    text_border = 1;
    text_skip = 1;
    text_fade = 0;
    
    with (obj_portals_tome)
        alarm[0] = 1;
    
    activate_dialog();
}

anim_step = 2;

if (instance_exists(obj_view))
    obj_view.follow_player = 0;
