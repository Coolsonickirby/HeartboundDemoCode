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
            
            switch (dialog_step)
            {
                case 1:
                    switch (next_step)
                    {
                        case 1:
                            cur_message = 2;
                            next_step = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            cur_message = 3;
                            next_step = 3;
                            activate_dialog();
                            break;
                        
                        case 3:
                            end_dialog();
                            anim_step = 2;
                            sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_walk");
                            image_speed = 0.05;
                            direction = 270;
                            speed = global.player_speed_cur * 0.5;
                            break;
                    }
                    
                    break;
                
                case 2:
                    switch (next_step)
                    {
                        case 1:
                            cur_message = 5;
                            next_step = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            end_dialog();
                            anim_step = 3;
                            sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_walk");
                            image_speed = 0.05;
                            direction = 270;
                            speed = global.player_speed_cur * 0.5;
                            break;
                    }
                    
                    break;
                
                case 3:
                    switch (next_step)
                    {
                        case 1:
                            cur_message = 7;
                            next_step = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            cur_message = 8;
                            next_step = 3;
                            activate_dialog();
                            break;
                        
                        case 3:
                            end_dialog();
                            instance_create_depth(x, y, 0, obj_barghest1_controller);
                            instance_change(obj_lore, true);
                            break;
                    }
                    
                    break;
            }
        }
    }
}

if (anim_step == 1)
{
    if (y < 200)
    {
        anim_step = 0;
        speed = 0;
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_stand");
        image_speed = 0.1;
        y = 200;
        cur_message = 1;
        dialog_step = 1;
        
        if (instance_exists(obj_music_parent))
        {
            with (obj_music_parent)
                alarm[2] = 1;
        }
        
        instance_create_depth(x, y - 100, 0, obj_barghest1_barghest_entrance);
        activate_dialog();
    }
}
else if (anim_step == 2)
{
    if (y > 220)
    {
        anim_step = 0;
        speed = 0;
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_stand");
        image_speed = 0.1;
        y = 220;
        cur_message = 4;
        dialog_step = 2;
        activate_dialog();
    }
}
else if (anim_step == 3)
{
    if (y > 240)
    {
        anim_step = 0;
        speed = 0;
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_stand");
        image_speed = 0.1;
        y = 240;
        cur_message = 6;
        dialog_step = 3;
        activate_dialog();
    }
}
