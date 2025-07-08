if (global.current_talker == id)
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
                            end_dialog();
                            
                            with (obj_portals_lore)
                                anim_step = 1;
                            
                            break;
                    }
                    
                    break;
                
                case 2:
                    switch (next_step)
                    {
                        case 1:
                            end_dialog();
                            
                            with (obj_portals_lore)
                                alarm[2] = room_speed * 2;
                            
                            break;
                    }
                    
                    break;
                
                case 3:
                    switch (next_step)
                    {
                        case 1:
                            text_location = 7;
                            cur_message = 4;
                            next_step = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            end_dialog();
                            
                            with (obj_portals_lore)
                                alarm[3] = room_speed * 2;
                            
                            break;
                    }
                    
                    break;
                
                case 4:
                    switch (next_step)
                    {
                        case 1:
                            cur_message = 6;
                            next_step = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            with (obj_portals_lore)
                                alarm[4] = room_speed * 2;
                            
                            end_dialog();
                            break;
                    }
                    
                    break;
                
                case 5:
                    switch (next_step)
                    {
                        case 1:
                            with (obj_portals_tome)
                                alarm[1] = 1;
                            
                            text_location = 8;
                            text_flipped = 0;
                            cur_message = 8;
                            next_step = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            with (obj_portals_baron)
                                alarm[0] = room_speed * 0.5;
                            
                            end_dialog();
                            break;
                    }
                    
                    break;
                
                case 6:
                    switch (next_step)
                    {
                        case 1:
                            scr_sound_play(snd_darkworld_cracks, 0.5, 0.9, false);
                            scr_screenshake(2, 0.5, 0);
                            cur_message = 10;
                            next_step = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            scr_sound_play(snd_darkworld_cracks, 0.5, 1, false);
                            scr_screenshake(2, 0.5, 0);
                            cur_message = 11;
                            next_step = 3;
                            activate_dialog();
                            break;
                        
                        case 3:
                            with (obj_portals_lore)
                                sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_armsup");
                            
                            end_dialog();
                            break;
                    }
                    
                    break;
                
                case 7:
                    switch (next_step)
                    {
                        case 1:
                            audio_sound_gain(snd_music_binder_weird, 0, 500);
                            
                            with (instance_create_depth(x, y, 0, obj_portals_screen))
                            {
                                if (global.storyline_array[107] >= 3 && global.storyline_array[71] == 2)
                                    next_color = 0;
                                else
                                    next_color = 16777215;
                            }
                            
                            end_dialog();
                            break;
                    }
                    
                    break;
                
                case 8:
                    switch (next_step)
                    {
                        case 1:
                            cur_message += 1;
                            next_step = 2;
                            activate_dialog();
                            break;
                        
                        case 2:
                            audio_sound_gain(snd_outsidewind, 0.1, 1200);
                            audio_sound_gain(snd_insidewind, 0.1, 1200);
                            instance_create_depth(120, 210, 0, obj_portals_portal_1);
                            instance_create_depth(320, 180, 0, obj_portals_portal_2);
                            instance_create_depth(520, 230, 0, obj_portals_portal_3);
                            
                            with (obj_portals_baron)
                            {
                                sprite_index = spr_baron_broken;
                                alarm[1] = room_speed * 5;
                                alarm[4] = room_speed * 5.8;
                                depth = -5002;
                            }
                            
                            with (obj_portals_lore)
                                depth = -5003;
                            
                            with (obj_portals_roomdark)
                                blackout_alpha = 1;
                            
                            with (obj_portals_tome)
                                instance_destroy();
                            
                            with (obj_portals_screen)
                                alarm[0] = room_speed;
                            
                            end_dialog();
                            break;
                    }
                    
                    break;
            }
        }
    }
    else if (text_complete == 1)
    {
        text_complete = 0;
    }
}
