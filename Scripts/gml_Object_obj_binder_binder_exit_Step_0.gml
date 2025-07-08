if (anim_step == 1)
{
    if (x > 270)
    {
        sprite_index = spr_binder_left_walk;
        image_speed = 0.1;
        direction = 180;
        speed = 1;
    }
    else
    {
        anim_step = 0;
        sprite_index = spr_binder_right_stand;
        image_speed = 0.07;
        speed = 0;
    }
}

if (global.storyline_array[108] >= 4)
    cur_message = 104;
else
    cur_message = 105;

if (anim_step == 0)
{
    if (event_step == 0)
    {
        if (talking_state == 0)
        {
            scr_talk();
        }
        else if (global.current_talker == id)
        {
            if (instance_exists(obj_lore))
            {
                with (obj_lore)
                    instance_change(obj_binder_lore_exit, true);
            }
            
            if (options_state == 0)
            {
                if (global.accept_key && text_complete == 1)
                {
                    text_complete = 0;
                    
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 106;
                            activate_dialog();
                            break;
                        
                        case 2:
                            next_step = 3;
                            cur_message = 107;
                            activate_dialog();
                            break;
                        
                        case 3:
                            next_step = 4;
                            cur_message = 108;
                            activate_dialog();
                            break;
                        
                        case 4:
                            next_step = 5;
                            cur_message = 109;
                            activate_dialog();
                            break;
                        
                        case 5:
                            next_step = 6;
                            cur_message = 110;
                            activate_dialog();
                            break;
                        
                        case 6:
                            next_step = 7;
                            cur_message = 111;
                            activate_dialog();
                            break;
                        
                        case 7:
                            next_step = 8;
                            cur_message = 112;
                            activate_dialog();
                            break;
                        
                        case 8:
                            anim_step = 1;
                            next_step = 9;
                            cur_message = 113;
                            activate_dialog();
                            event_step = 1;
                            obj_binder_lore_exit.anim_step = 2;
                            obj_binder_clockdoor_pendulum.anim_next = 1;
                            break;
                        
                        case 9:
                            if (global.storyline_array[107] <= 2)
                            {
                                next_step = 10;
                                event_step = 1;
                                obj_binder_lore_exit.anim_step = 3;
                            }
                            else
                            {
                                next_step = 14;
                                event_step = 1;
                                obj_binder_lore_exit.anim_step = 4;
                            }
                            
                            cur_message = 114;
                            activate_dialog();
                            break;
                        
                        case 10:
                            next_step = 11;
                            cur_message = 115;
                            activate_dialog();
                            break;
                        
                        case 11:
                            next_step = 12;
                            cur_message = 116;
                            activate_dialog();
                            break;
                        
                        case 12:
                            next_step = 13;
                            cur_message = 117;
                            activate_dialog();
                            break;
                        
                        case 13:
                            next_step = 14;
                            cur_message = 118;
                            activate_dialog();
                            event_step = 1;
                            obj_binder_lore_exit.anim_step = 4;
                            break;
                        
                        case 14:
                            next_step = 15;
                            cur_message = 119;
                            activate_dialog();
                            break;
                        
                        case 15:
                            with (obj_binder_clockdoor_front)
                            {
                                image_index = 0;
                                image_speed = 0.1;
                                sprite_index = spr_binder_clockdoor_front_slide_up;
                                depth = -200;
                            }
                            
                            end_dialog();
                            break;
                    }
                }
            }
            else if (text_complete == 1)
            {
                text_complete = 0;
            }
        }
    }
}
