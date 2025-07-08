function end_dialog()
{
    if (global.combat_active == 0)
        global.player_frozen = 0;
    
    with (obj_controller_dialog)
        alarm[0] = 1;
    
    talking_state = 0;
    next_step = 1;
    
    with (obj_textbox)
    {
        if (stored_talker == global.current_talker)
            instance_destroy();
    }
}
