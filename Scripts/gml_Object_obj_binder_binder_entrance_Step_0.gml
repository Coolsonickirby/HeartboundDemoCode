if (anim_step == 1)
{
    if (y < 500)
    {
        anim_step = 0;
        sprite_index = spr_binder_down_stand;
        image_speed = 0.07;
        speed = 0;
        alarm[2] = room_speed;
    }
}
else if (anim_step == 2)
{
    if (y < 250)
    {
        global.player_frozen = 0;
        instance_destroy();
    }
}

if (anim_step == 0 || anim_step == 2)
{
    if (talking_state == 0)
    {
        scr_talk();
    }
    else if (global.current_talker == id)
    {
        if (options_state == 0)
        {
            if (global.accept_key && text_complete == 1)
            {
                text_complete = 0;
                
                switch (next_step)
                {
                    case 1:
                        next_step = 2;
                        cur_message = 2;
                        
                        with (obj_binder_lore_sitting)
                            instance_change(obj_lore, true);
                        
                        activate_dialog();
                        break;
                    
                    case 2:
                        next_step = 3;
                        cur_message = 3;
                        activate_dialog();
                        break;
                    
                    case 3:
                        next_step = 4;
                        cur_message = 4;
                        activate_dialog();
                        break;
                    
                    case 4:
                        next_step = 5;
                        cur_message = 5;
                        activate_dialog();
                        break;
                    
                    case 5:
                        next_step = 6;
                        cur_message = 6;
                        activate_dialog();
                        break;
                    
                    case 6:
                        next_step = 7;
                        cur_message = 7;
                        activate_dialog();
                        break;
                    
                    case 7:
                        next_step = 8;
                        cur_message = 8;
                        activate_dialog();
                        break;
                    
                    case 8:
                        next_step = 9;
                        cur_message = 9;
                        activate_dialog();
                        break;
                    
                    case 9:
                        next_step = 10;
                        cur_message = 10;
                        activate_dialog();
                        break;
                    
                    case 10:
                        next_step = 11;
                        cur_message = 11;
                        activate_dialog();
                        break;
                    
                    case 11:
                        next_step = 12;
                        cur_message = 12;
                        activate_dialog();
                        break;
                    
                    case 12:
                        next_step = 13;
                        cur_message = 13;
                        activate_dialog();
                        break;
                    
                    case 13:
                        next_step = 14;
                        cur_message = 14;
                        activate_dialog();
                        break;
                    
                    case 14:
                        next_step = 15;
                        cur_message = 15;
                        activate_dialog();
                        break;
                    
                    case 15:
                        global.storyline_array[40] = 1;
                        end_dialog();
                        sprite_index = spr_binder_up_walk;
                        image_speed = 0.15;
                        anim_step = 2;
                        speed = 1.5;
                        global.player_frozen = 1;
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
