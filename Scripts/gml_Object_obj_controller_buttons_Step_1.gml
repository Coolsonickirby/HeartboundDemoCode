if (global.player_frozen == 1 && global.menu_active == 1)
{
    if (global.current_menu == 1)
    {
        switch (global.control_type)
        {
            case 0:
                button_index[0] = obj_settings_cancel;
                button_index[1] = obj_settings_volume;
                button_index[2] = obj_settings_keybind_w;
                button_index[3] = obj_settings_keybind_a;
                button_index[4] = obj_settings_keybind_s;
                button_index[5] = obj_settings_keybind_d;
                button_index[6] = obj_settings_keybind_z;
                button_index[7] = obj_settings_keybind_x;
                button_index[8] = obj_settings_wiggle;
                button_index[9] = obj_settings_fullscreen;
                total_buttons = array_length(button_index) - 1;
                
                for (xx = 0; xx <= total_buttons; xx++)
                {
                    if (instance_exists(button_index[xx]))
                        button_index[xx].button_active = 0;
                }
                
                var cam_x = obj_controller_settings.cam_x;
                var cam_y = obj_controller_settings.cam_y;
                
                for (xx = 0; xx <= total_buttons; xx++)
                {
                    if (position_meeting(mouse_x - cam_x, mouse_y - cam_y, button_index[xx]))
                    {
                        button_index[xx].button_active = 1;
                        
                        if (global.accept_key)
                        {
                            switch (xx)
                            {
                                case 0:
                                    global.menu_active = 0;
                                    settings_close();
                                    break;
                                
                                case 1:
                                    break;
                                
                                case 8:
                                    switch (global.wiggletext_active)
                                    {
                                        case 0:
                                            global.wiggletext_active = 1;
                                            break;
                                        
                                        case 1:
                                            global.wiggletext_active = 0;
                                            break;
                                    }
                                    
                                    break;
                                
                                case 9:
                                    switch (global.fullscreen_active)
                                    {
                                        case 0:
                                            global.fullscreen_active = 1;
                                            break;
                                        
                                        case 1:
                                            global.fullscreen_active = 0;
                                            break;
                                    }
                                    
                                    window_set_fullscreen(global.fullscreen_active);
                                    break;
                                
                                default:
                                    global.menu_active = 0;
                                    scr_handle_mouse(false, false);
                                    button_index[xx].button_last = button_index[xx].button_text;
                                    button_index[xx].button_selected = 1;
                                    break;
                            }
                        }
                        
                        if (global.accept_key_held)
                        {
                            switch (xx)
                            {
                                case 1:
                                    with (obj_settings_volume)
                                    {
                                        vol_y = clamp(mouse_y - cam_y, vol_max, vol_min);
                                        global.volume_main = clamp((vol_min - vol_y) / vol_total, 0, 1);
                                        audio_master_gain(global.volume_main);
                                    }
                                    
                                    break;
                            }
                        }
                    }
                }
                
                break;
            
            case 1:
                button_index[0] = obj_settings_cancel;
                button_index[1] = obj_settings_volume;
                button_index[2] = obj_settings_controller_down;
                button_index[3] = obj_settings_controller_right;
                button_index[4] = obj_settings_controller_left;
                button_index[5] = obj_settings_controller_up;
                button_index[6] = obj_settings_controller_type;
                button_index[7] = obj_settings_wiggle;
                button_index[8] = obj_settings_fullscreen;
                total_buttons = array_length(button_index) - 1;
                
                for (xx = 0; xx <= total_buttons; xx++)
                {
                    if (instance_exists(button_index[xx]))
                        button_index[xx].button_active = 0;
                }
                
                if (instance_exists(button_index[selected_button]))
                    button_index[selected_button].button_active = 1;
                
                if (global.accept_key)
                {
                    switch (selected_button)
                    {
                        case 0:
                            global.menu_active = 0;
                            settings_close();
                            break;
                        
                        case 1:
                            with (obj_settings_volume)
                            {
                                global.volume_main = clamp(global.volume_main + 0.05, 0, 1);
                                vol_y = clamp(vol_min - (global.volume_main * vol_total), vol_max, vol_min);
                                audio_master_gain(global.volume_main);
                            }
                            
                            break;
                        
                        case 6:
                            switch (global.controller_type)
                            {
                                case 0:
                                    global.controller_type = 1;
                                    break;
                                
                                case 1:
                                    global.controller_type = 0;
                                    break;
                            }
                            
                            break;
                        
                        case 7:
                            switch (global.wiggletext_active)
                            {
                                case 0:
                                    global.wiggletext_active = 1;
                                    break;
                                
                                case 1:
                                    global.wiggletext_active = 0;
                                    break;
                            }
                            
                            break;
                        
                        case 8:
                            switch (global.fullscreen_active)
                            {
                                case 0:
                                    global.fullscreen_active = 1;
                                    break;
                                
                                case 1:
                                    global.fullscreen_active = 0;
                                    break;
                            }
                            
                            window_set_fullscreen(global.fullscreen_active);
                            break;
                        
                        default:
                            global.menu_active = 0;
                            button_index[selected_button].button_last = button_index[selected_button].button_kind;
                            button_index[selected_button].button_selected = 1;
                            break;
                    }
                }
                
                if (global.cancel_key)
                {
                    switch (selected_button)
                    {
                        case 1:
                            with (obj_settings_volume)
                            {
                                global.volume_main = clamp(global.volume_main - 0.05, 0, 1);
                                vol_y = clamp(vol_min - (global.volume_main * vol_total), vol_max, vol_min);
                                audio_master_gain(global.volume_main);
                            }
                            
                            break;
                        
                        case 0:
                            global.menu_active = 0;
                            settings_close();
                            break;
                        
                        default:
                            selected_button = 0;
                            break;
                    }
                }
                
                if (global.left_key_pressed)
                {
                    switch (selected_button)
                    {
                        case 0:
                            selected_button = 1;
                            break;
                        
                        case 1:
                            selected_button = 8;
                            break;
                        
                        case 2:
                            selected_button = 4;
                            break;
                        
                        case 3:
                            selected_button = 4;
                            break;
                        
                        case 4:
                            selected_button = 1;
                            break;
                        
                        case 5:
                            selected_button = 4;
                            break;
                        
                        case 6:
                            selected_button = 1;
                            break;
                        
                        case 7:
                            selected_button = 3;
                            break;
                        
                        case 8:
                            selected_button = 6;
                            break;
                    }
                }
                
                if (global.right_key_pressed)
                {
                    switch (selected_button)
                    {
                        case 0:
                            selected_button = 1;
                            break;
                        
                        case 1:
                            selected_button = 4;
                            break;
                        
                        case 2:
                            selected_button = 3;
                            break;
                        
                        case 3:
                            selected_button = 7;
                            break;
                        
                        case 4:
                            selected_button = 3;
                            break;
                        
                        case 5:
                            selected_button = 3;
                            break;
                        
                        case 6:
                            selected_button = 8;
                            break;
                        
                        case 7:
                            selected_button = 1;
                            break;
                        
                        case 8:
                            selected_button = 1;
                            break;
                    }
                }
                
                if (global.up_key_pressed)
                {
                    switch (selected_button)
                    {
                        case 0:
                            selected_button = 8;
                            break;
                        
                        case 1:
                            with (obj_settings_volume)
                            {
                                global.volume_main = clamp(global.volume_main + 0.05, 0, 1);
                                vol_y = clamp(vol_min - (global.volume_main * vol_total), vol_max, vol_min);
                                audio_master_gain(global.volume_main);
                            }
                            
                            break;
                        
                        case 2:
                            selected_button = 5;
                            break;
                        
                        case 3:
                            selected_button = 5;
                            break;
                        
                        case 4:
                            selected_button = 5;
                            break;
                        
                        case 5:
                            selected_button = 0;
                            break;
                        
                        case 6:
                            selected_button = 2;
                            break;
                        
                        case 7:
                            selected_button = 0;
                            break;
                        
                        case 8:
                            selected_button = 7;
                            break;
                    }
                }
                
                if (global.down_key_pressed)
                {
                    switch (selected_button)
                    {
                        case 0:
                            selected_button = 7;
                            break;
                        
                        case 1:
                            with (obj_settings_volume)
                            {
                                global.volume_main = clamp(global.volume_main - 0.05, 0, 1);
                                vol_y = clamp(vol_min - (global.volume_main * vol_total), vol_max, vol_min);
                                audio_master_gain(global.volume_main);
                            }
                            
                            break;
                        
                        case 2:
                            selected_button = 6;
                            break;
                        
                        case 3:
                            selected_button = 2;
                            break;
                        
                        case 4:
                            selected_button = 2;
                            break;
                        
                        case 5:
                            selected_button = 2;
                            break;
                        
                        case 6:
                            selected_button = 0;
                            break;
                        
                        case 7:
                            selected_button = 8;
                            break;
                        
                        case 8:
                            selected_button = 0;
                            break;
                    }
                }
                
                break;
        }
    }
    else if (global.current_menu == 2)
    {
        button_index[0][0] = obj_button_ENUS;
        button_index[1][0] = obj_button_PTBR;
        button_index[2][0] = obj_button_FRFR;
        button_index[3][0] = obj_button_ESMX;
        button_index[0][1] = obj_button_ENUS;
        button_index[1][1] = obj_button_PTBR;
        button_index[2][1] = obj_button_RURU;
        button_index[3][1] = obj_button_JAJP;
        button_columns = 2;
        button_rows = 4;
        
        for (xx = 0; xx < button_rows; xx++)
        {
            for (yy = 0; yy < button_columns; yy++)
            {
                if (instance_exists(button_index[xx][yy]))
                    button_index[xx][yy].activated = 0;
            }
        }
        
        switch (global.control_type)
        {
            case 0:
                for (xx = 0; xx < button_rows; xx++)
                {
                    for (yy = 0; yy < button_columns; yy++)
                    {
                        if (instance_exists(button_index[xx][yy]))
                        {
                            if (position_meeting(mouse_x, mouse_y, button_index[xx][yy]))
                            {
                                button_index[xx][yy].activated = 1;
                                
                                if (global.accept_key)
                                {
                                    var button_name = object_get_name(button_index[xx][yy]);
                                    var button_name_split = 0;
                                    var button_name_length = string_length(button_name);
                                    
                                    for (string_index = 0; string_index < button_name_length; string_index++)
                                    {
                                        if (string_char_at(button_name, string_index) == "_")
                                            button_name_split = string_index + 1;
                                    }
                                    
                                    var locale_length = (button_name_length - button_name_split) + 1;
                                    global.game_language = string_copy(button_name, button_name_split, locale_length);
                                    global.language_type = button_index[xx][yy].language_type;
                                    
                                    with (instance_create_depth(x, y, 0, obj_fade_menu))
                                    {
                                        next_room = room_next(room);
                                        next_color = 0;
                                        fadein_timer = 0.02;
                                        fadeout_timer = 0.02;
                                        fadepause_timer = 0.02;
                                        fadeout_amount = 0.05;
                                        fadein_amount = 0.05;
                                        fade_out = true;
                                        alarm[1] = room_speed * fadeout_timer;
                                    }
                                    
                                    global.current_menu = 0;
                                    selected_button = 0;
                                    cur_row = 0;
                                    cur_col = 0;
                                }
                            }
                        }
                    }
                }
                
                break;
            
            case 1:
                if (instance_exists(button_index[cur_row][cur_col]))
                    button_index[cur_row][cur_col].activated = 1;
                
                if (global.left_key_pressed)
                {
                    if (cur_col == 0)
                        cur_col = button_columns - 1;
                    else
                        cur_col -= 1;
                }
                
                if (global.right_key_pressed)
                {
                    if (cur_col == (button_columns - 1))
                        cur_col = 0;
                    else
                        cur_col += 1;
                }
                
                if (global.up_key_pressed)
                {
                    if (cur_row == 0)
                        cur_row = button_rows - 1;
                    else
                        cur_row -= 1;
                }
                
                if (global.down_key_pressed)
                {
                    if (cur_row == (button_rows - 1))
                        cur_row = 0;
                    else
                        cur_row += 1;
                }
                
                if (global.accept_key)
                {
                    var button_name = object_get_name(button_index[cur_row][cur_col]);
                    var button_name_split = 0;
                    var button_name_length = string_length(button_name);
                    
                    for (string_index = 0; string_index < button_name_length; string_index++)
                    {
                        if (string_char_at(button_name, string_index) == "_")
                            button_name_split = string_index + 1;
                    }
                    
                    var locale_length = (button_name_length - button_name_split) + 1;
                    global.game_language = string_copy(button_name, button_name_split, locale_length);
                    
                    if (instance_exists(button_index[cur_row][cur_col]))
                    {
                        global.language_type = button_index[cur_row][cur_col].language_type;
                        
                        with (instance_create_depth(x, y, 0, obj_fade_menu))
                        {
                            next_room = room_next(room);
                            next_color = 0;
                            fadein_timer = 0.02;
                            fadeout_timer = 0.02;
                            fadepause_timer = 0.02;
                            fadeout_amount = 0.05;
                            fadein_amount = 0.05;
                            fade_out = true;
                            alarm[1] = room_speed * fadeout_timer;
                        }
                        
                        global.current_menu = 0;
                        selected_button = 0;
                    }
                }
                
                break;
        }
    }
    else if (global.current_menu == 3 && global.current_talker != -4 && global.option_number != 0)
    {
        button_index[0] = obj_button_dialog_1;
        button_index[1] = obj_button_dialog_2;
        button_index[2] = obj_button_dialog_3;
        button_index[3] = obj_button_dialog_4;
        total_buttons = global.option_number - 1;
        option_index[0] = global.current_talker.option_1;
        option_index[1] = global.current_talker.option_2;
        option_index[2] = global.current_talker.option_3;
        option_index[3] = global.current_talker.option_4;
        
        for (xx = 0; xx <= total_buttons; xx++)
        {
            if (instance_exists(button_index[xx]))
                button_index[xx].activated = 0;
        }
        
        if (instance_exists(button_index[selected_button]))
            button_index[selected_button].activated = 1;
        
        if (global.current_talker.text_complete == 1)
        {
            switch (total_buttons)
            {
                case 1:
                    if (global.right_key_pressed || global.down_key_pressed)
                    {
                        selected_button++;
                        
                        if (selected_button > total_buttons)
                            selected_button = 0;
                    }
                    else if (global.left_key_pressed || global.up_key_pressed)
                    {
                        selected_button--;
                        
                        if (selected_button < 0)
                            selected_button = total_buttons;
                    }
                    
                    break;
                
                case 2:
                    if (global.right_key_pressed || global.left_key_pressed)
                    {
                        switch (selected_button)
                        {
                            case 0:
                                selected_button = 2;
                                break;
                            
                            case 1:
                                selected_button = 1;
                                break;
                            
                            case 2:
                                selected_button = 0;
                                break;
                        }
                    }
                    
                    if (global.up_key_pressed || global.down_key_pressed)
                    {
                        switch (selected_button)
                        {
                            case 0:
                                selected_button = 1;
                                break;
                            
                            case 1:
                                selected_button = 0;
                                break;
                            
                            case 2:
                                selected_button = 2;
                                break;
                        }
                    }
                    
                    break;
                
                case 3:
                    if (global.right_key_pressed || global.left_key_pressed)
                    {
                        switch (selected_button)
                        {
                            case 0:
                                selected_button = 2;
                                break;
                            
                            case 1:
                                selected_button = 3;
                                break;
                            
                            case 2:
                                selected_button = 0;
                                break;
                            
                            case 3:
                                selected_button = 1;
                                break;
                        }
                    }
                    
                    if (global.up_key_pressed || global.down_key_pressed)
                    {
                        switch (selected_button)
                        {
                            case 0:
                                selected_button = 1;
                                break;
                            
                            case 1:
                                selected_button = 0;
                                break;
                            
                            case 2:
                                selected_button = 3;
                                break;
                            
                            case 3:
                                selected_button = 2;
                                break;
                        }
                    }
                    
                    break;
            }
            
            if (global.accept_key && instance_exists(obj_button_dialog_1))
            {
                if (instance_exists(global.current_talker))
                {
                    with (global.current_talker)
                    {
                        next_step = other.option_index[other.selected_button];
                        deactivate_dialog_options();
                    }
                }
                
                selected_button = 0;
            }
        }
    }
    else if (global.current_menu == 4)
    {
        button_index[0] = obj_button_continue;
        button_index[1] = obj_button_delete;
        button_index[2] = obj_menu_heart;
        button_index[3] = obj_button_settings;
        button_index[4] = obj_button_discord;
        button_index[5] = obj_button_twitch;
        button_index[6] = obj_button_youtube;
        total_buttons = array_length(button_index) - 1;
        
        for (xx = 0; xx <= total_buttons; xx++)
        {
            if (instance_exists(button_index[xx]))
                button_index[xx].activated = 0;
        }
        
        switch (global.control_type)
        {
            case 0:
                for (xx = 0; xx <= total_buttons; xx++)
                {
                    if (instance_exists(button_index[xx]))
                    {
                        if (position_meeting(mouse_x, mouse_y, button_index[xx]))
                        {
                            button_index[xx].activated = 1;
                            
                            if (global.accept_key)
                            {
                                switch (xx)
                                {
                                    case 0:
                                        load_game();
                                        global.player_frozen = 1;
                                        scr_handle_mouse(false, false);
                                        
                                        with (instance_create_depth(x, y, 0, obj_fade_start))
                                        {
                                            if (global.start_room == home_bedroom)
                                            {
                                                next_room = home_bedroom;
                                                player_x = 0;
                                                player_y = 0;
                                                next_color = 16777215;
                                                fadein_timer = 0.02;
                                                fadeout_timer = 0.02;
                                                fadepause_timer = 0.5;
                                                fadeout_amount = 0.01;
                                                fadein_amount = 0.05;
                                                fade_out = true;
                                                scr_sound_play(snd_whitefade, 1, 1, false);
                                            }
                                            else
                                            {
                                                global.storyline_array[70] = 0;
                                                
                                                switch (global.storyline_array[409])
                                                {
                                                    case 0:
                                                        next_room = global_bedhead;
                                                        break;
                                                    
                                                    case 1:
                                                        next_room = darkworld_judgehead;
                                                        break;
                                                    
                                                    default:
                                                        next_room = darkworld_limbo;
                                                        break;
                                                }
                                                
                                                player_x = 0;
                                                player_y = 0;
                                                next_color = 16777215;
                                                fadein_timer = 0.02;
                                                fadeout_timer = 0.02;
                                                fadepause_timer = 0.5;
                                                fadeout_amount = 0.01;
                                                fadein_amount = 0.05;
                                                fade_out = true;
                                                scr_sound_play(snd_whitefade, 1, 1, false);
                                            }
                                            
                                            alarm[1] = room_speed * fadeout_timer;
                                        }
                                        
                                        audio_sound_gain(snd_music_menu_intro, 0, 1000);
                                        audio_sound_gain(snd_music_menu_loop, 0, 1000);
                                        global.menu_active = 0;
                                        break;
                                    
                                    case 1:
                                        global.menu_active = 0;
                                        scr_handle_mouse(false, false);
                                        button_index[xx].activated = 0;
                                        selected_button = 0;
                                        activate_dialog();
                                        break;
                                    
                                    case 2:
                                        scr_handle_mouse(false, false);
                                        
                                        with (instance_create_depth(x, y, 0, obj_fade))
                                        {
                                            next_room = menu_credits;
                                            player_x = 0;
                                            player_y = 0;
                                            next_color = 0;
                                            fadein_timer = 0.02;
                                            fadeout_timer = 0.02;
                                            fadepause_timer = 0.5;
                                            fadeout_amount = 0.05;
                                            fadein_amount = 0.05;
                                            fade_out = true;
                                            alarm[1] = room_speed * fadeout_timer;
                                        }
                                        
                                        audio_sound_gain(snd_music_menu_intro, 0, 500);
                                        audio_sound_gain(snd_music_menu_loop, 0, 500);
                                        global.menu_active = 0;
                                        break;
                                    
                                    case 3:
                                        settings_open(button_index[xx].x, button_index[xx].y);
                                        break;
                                    
                                    case 4:
                                        url_open("https://discord.gg/piratesoftware");
                                        break;
                                    
                                    case 5:
                                        url_open("https://piratesoftware.live");
                                        break;
                                    
                                    case 6:
                                        url_open("https://youtube.com/piratesoftware");
                                        break;
                                }
                            }
                        }
                    }
                }
                
                break;
            
            case 1:
                if (instance_exists(button_index[selected_button]))
                    button_index[selected_button].activated = 1;
                
                if (global.right_key_pressed)
                {
                    switch (selected_button)
                    {
                        case 0:
                            if (instance_exists(button_index[1]))
                                selected_button = 1;
                            
                            break;
                        
                        case 1:
                            selected_button = 0;
                            break;
                        
                        case 3:
                            selected_button = 4;
                            break;
                        
                        case 4:
                            selected_button = 5;
                            break;
                        
                        case 5:
                            selected_button = 6;
                            break;
                        
                        case 6:
                            selected_button = 3;
                            break;
                    }
                }
                
                if (global.left_key_pressed)
                {
                    switch (selected_button)
                    {
                        case 0:
                            if (instance_exists(button_index[1]))
                                selected_button = 1;
                            
                            break;
                        
                        case 1:
                            selected_button = 0;
                            break;
                        
                        case 3:
                            selected_button = 6;
                            break;
                        
                        case 4:
                            selected_button = 3;
                            break;
                        
                        case 5:
                            selected_button = 4;
                            break;
                        
                        case 6:
                            selected_button = 5;
                            break;
                    }
                }
                
                if (global.up_key_pressed)
                {
                    switch (selected_button)
                    {
                        case 0:
                            selected_button = 2;
                            break;
                        
                        case 1:
                            selected_button = 2;
                            break;
                        
                        case 2:
                            selected_button = 3;
                            break;
                        
                        default:
                            selected_button = 0;
                            break;
                    }
                }
                
                if (global.down_key_pressed)
                {
                    switch (selected_button)
                    {
                        case 0:
                            selected_button = 3;
                            break;
                        
                        case 1:
                            selected_button = 3;
                            break;
                        
                        case 2:
                            selected_button = 0;
                            break;
                        
                        default:
                            selected_button = 2;
                            break;
                    }
                }
                
                if (global.accept_key)
                {
                    switch (selected_button)
                    {
                        case 0:
                            load_game();
                            global.player_frozen = 1;
                            scr_handle_mouse(false, false);
                            
                            with (instance_create_depth(x, y, 0, obj_fade_start))
                            {
                                if (global.start_room == home_bedroom)
                                {
                                    next_room = home_bedroom;
                                    player_x = 0;
                                    player_y = 0;
                                    next_color = 16777215;
                                    fadein_timer = 0.02;
                                    fadeout_timer = 0.02;
                                    fadepause_timer = 0.5;
                                    fadeout_amount = 0.01;
                                    fadein_amount = 0.05;
                                    fade_out = true;
                                    scr_sound_play(snd_whitefade, 1, 1, false);
                                }
                                else
                                {
                                    global.storyline_array[70] = 0;
                                    
                                    switch (global.storyline_array[409])
                                    {
                                        case 0:
                                            next_room = global_bedhead;
                                            break;
                                        
                                        case 1:
                                            next_room = darkworld_judgehead;
                                            break;
                                        
                                        default:
                                            next_room = darkworld_limbo;
                                            break;
                                    }
                                    
                                    player_x = 0;
                                    player_y = 0;
                                    next_color = 16777215;
                                    fadein_timer = 0.02;
                                    fadeout_timer = 0.02;
                                    fadepause_timer = 0.5;
                                    fadeout_amount = 0.01;
                                    fadein_amount = 0.05;
                                    fade_out = true;
                                    scr_sound_play(snd_whitefade, 1, 1, false);
                                }
                                
                                alarm[1] = room_speed * fadeout_timer;
                            }
                            
                            audio_sound_gain(snd_music_menu_intro, 0, 1000);
                            audio_sound_gain(snd_music_menu_loop, 0, 1000);
                            global.menu_active = 0;
                            break;
                        
                        case 1:
                            global.menu_active = 0;
                            scr_handle_mouse(false, false);
                            button_index[selected_button].activated = 0;
                            selected_button = 0;
                            activate_dialog();
                            break;
                        
                        case 2:
                            scr_handle_mouse(false, false);
                            
                            with (instance_create_depth(x, y, 0, obj_fade))
                            {
                                next_room = menu_credits;
                                player_x = 0;
                                player_y = 0;
                                next_color = 0;
                                fadein_timer = 0.02;
                                fadeout_timer = 0.02;
                                fadepause_timer = 0.5;
                                fadeout_amount = 0.05;
                                fadein_amount = 0.05;
                                fade_out = true;
                                alarm[1] = room_speed * fadeout_timer;
                            }
                            
                            audio_sound_gain(snd_music_menu_intro, 0, 500);
                            audio_sound_gain(snd_music_menu_loop, 0, 500);
                            global.menu_active = 0;
                            break;
                        
                        case 3:
                            settings_open(button_index[selected_button].x, button_index[selected_button].y);
                            break;
                        
                        case 4:
                            url_open("https://discord.gg/piratesoftware");
                            break;
                        
                        case 5:
                            url_open("https://piratesoftware.live");
                            break;
                        
                        case 6:
                            url_open("https://youtube.com/piratesoftware");
                            break;
                    }
                }
                
                break;
        }
    }
    else if (global.current_menu == 5)
    {
        button_index[0] = obj_portals_portal_1;
        button_index[1] = obj_portals_portal_2;
        button_index[2] = obj_portals_portal_3;
        total_buttons = array_length(button_index) - 1;
        
        for (xx = 0; xx <= total_buttons; xx++)
        {
            if (instance_exists(button_index[xx]))
                button_index[xx].activated = 0;
        }
        
        if (global.control_type == 0)
        {
            for (xx = 0; xx <= total_buttons; xx++)
            {
                if (instance_exists(button_index[xx]))
                {
                    if (position_meeting(mouse_x, mouse_y, button_index[xx]))
                    {
                        button_index[xx].activated = 1;
                        
                        if (global.accept_key)
                        {
                            switch (xx)
                            {
                                case 0:
                                    global.storyline_array[119] = 2;
                                    
                                    if (global.storyline_array[120] == 0)
                                        global.storyline_array[120] = 2;
                                    else if (global.storyline_array[121] == 0)
                                        global.storyline_array[121] = 2;
                                    else if (global.storyline_array[122] == 0)
                                        global.storyline_array[122] = 2;
                                    
                                    if (room == darkworld_portals)
                                    {
                                        with (instance_create_depth(420, 500, 0, obj_portals_bookface_tome))
                                            target_portal = other.xx + 1;
                                    }
                                    else if (instance_exists(obj_worldpath_lore))
                                    {
                                        with (obj_worldpath_lore)
                                        {
                                            target_portal = other.button_index[other.xx];
                                            alarm[0] = room_speed * 0.25;
                                        }
                                    }
                                    
                                    break;
                                
                                case 1:
                                    global.storyline_array[119] = 3;
                                    
                                    if (global.storyline_array[120] == 0)
                                        global.storyline_array[120] = 3;
                                    else if (global.storyline_array[121] == 0)
                                        global.storyline_array[121] = 3;
                                    else if (global.storyline_array[122] == 0)
                                        global.storyline_array[122] = 3;
                                    
                                    if (room == darkworld_portals)
                                    {
                                        with (instance_create_depth(320, 500, 0, obj_portals_bookface_tome))
                                            target_portal = other.xx + 1;
                                    }
                                    else if (instance_exists(obj_worldpath_lore))
                                    {
                                        with (obj_worldpath_lore)
                                        {
                                            target_portal = other.button_index[other.xx];
                                            alarm[0] = room_speed * 0.25;
                                        }
                                    }
                                    
                                    break;
                                
                                case 2:
                                    if (global.storyline_array[19] == 0)
                                    {
                                        global.storyline_array[119] = 5;
                                        
                                        if (global.storyline_array[120] == 0)
                                            global.storyline_array[120] = 5;
                                        else if (global.storyline_array[121] == 0)
                                            global.storyline_array[121] = 5;
                                        else if (global.storyline_array[122] == 0)
                                            global.storyline_array[122] = 5;
                                    }
                                    else
                                    {
                                        global.storyline_array[119] = 4;
                                        
                                        if (global.storyline_array[120] == 0)
                                            global.storyline_array[120] = 4;
                                        else if (global.storyline_array[121] == 0)
                                            global.storyline_array[121] = 4;
                                        else if (global.storyline_array[122] == 0)
                                            global.storyline_array[122] = 4;
                                    }
                                    
                                    if (room == darkworld_portals)
                                    {
                                        with (instance_create_depth(220, 500, 0, obj_portals_bookface_tome))
                                            target_portal = other.xx + 1;
                                    }
                                    else if (instance_exists(obj_worldpath_lore))
                                    {
                                        with (obj_worldpath_lore)
                                        {
                                            target_portal = other.button_index[other.xx];
                                            alarm[0] = room_speed * 0.25;
                                        }
                                    }
                                    
                                    break;
                            }
                            
                            global.menu_active = 0;
                            global.current_menu = 0;
                            scr_handle_mouse(false, false);
                            button_index[xx].activated = 0;
                            selected_button = 0;
                        }
                    }
                }
            }
        }
        else
        {
            if (instance_exists(button_index[selected_button]))
            {
                button_index[selected_button].activated = 1;
            }
            else
            {
                while (!instance_exists(button_index[selected_button]))
                {
                    selected_button++;
                    
                    if (selected_button > total_buttons)
                        selected_button = 0;
                }
                
                button_index[selected_button].activated = 1;
            }
            
            if (global.left_key_pressed || global.up_key_pressed)
            {
                selected_button--;
                
                if (selected_button < 0)
                    selected_button = total_buttons;
                
                while (!instance_exists(button_index[selected_button]))
                {
                    selected_button--;
                    
                    if (selected_button < 0)
                        selected_button = total_buttons;
                }
            }
            
            if (global.right_key_pressed || global.down_key_pressed)
            {
                selected_button++;
                
                if (selected_button > total_buttons)
                    selected_button = 0;
                
                while (!instance_exists(button_index[selected_button]))
                {
                    selected_button++;
                    
                    if (selected_button > total_buttons)
                        selected_button = 0;
                }
            }
            
            if (global.accept_key)
            {
                switch (selected_button)
                {
                    case 0:
                        global.storyline_array[119] = 2;
                        
                        if (global.storyline_array[120] == 0)
                            global.storyline_array[120] = 2;
                        else if (global.storyline_array[121] == 0)
                            global.storyline_array[121] = 2;
                        else if (global.storyline_array[122] == 0)
                            global.storyline_array[122] = 2;
                        
                        if (room == darkworld_portals)
                        {
                            with (instance_create_depth(420, 500, 0, obj_portals_bookface_tome))
                                target_portal = other.selected_button + 1;
                        }
                        else if (instance_exists(obj_worldpath_lore))
                        {
                            with (obj_worldpath_lore)
                            {
                                target_portal = other.button_index[other.selected_button];
                                alarm[0] = room_speed * 0.25;
                            }
                        }
                        
                        break;
                    
                    case 1:
                        global.storyline_array[119] = 3;
                        
                        if (global.storyline_array[120] == 0)
                            global.storyline_array[120] = 3;
                        else if (global.storyline_array[121] == 0)
                            global.storyline_array[121] = 3;
                        else if (global.storyline_array[122] == 0)
                            global.storyline_array[122] = 3;
                        
                        if (room == darkworld_portals)
                        {
                            with (instance_create_depth(320, 500, 0, obj_portals_bookface_tome))
                                target_portal = other.selected_button + 1;
                        }
                        else if (instance_exists(obj_worldpath_lore))
                        {
                            with (obj_worldpath_lore)
                            {
                                target_portal = other.button_index[other.selected_button];
                                alarm[0] = room_speed * 0.25;
                            }
                        }
                        
                        break;
                    
                    case 2:
                        if (global.storyline_array[108] <= 6)
                        {
                            global.storyline_array[119] = 5;
                            
                            if (global.storyline_array[120] == 0)
                                global.storyline_array[120] = 5;
                            else if (global.storyline_array[121] == 0)
                                global.storyline_array[121] = 5;
                            else if (global.storyline_array[122] == 0)
                                global.storyline_array[122] = 5;
                        }
                        else
                        {
                            global.storyline_array[119] = 4;
                            
                            if (global.storyline_array[120] == 0)
                                global.storyline_array[120] = 4;
                            else if (global.storyline_array[121] == 0)
                                global.storyline_array[121] = 4;
                            else if (global.storyline_array[122] == 0)
                                global.storyline_array[122] = 4;
                        }
                        
                        if (room == darkworld_portals)
                        {
                            with (instance_create_depth(220, 500, 0, obj_portals_bookface_tome))
                                target_portal = other.selected_button + 1;
                        }
                        else if (instance_exists(obj_worldpath_lore))
                        {
                            with (obj_worldpath_lore)
                            {
                                target_portal = other.button_index[other.selected_button];
                                alarm[0] = room_speed * 0.25;
                            }
                        }
                        
                        break;
                }
                
                global.menu_active = 0;
                global.current_menu = 0;
                scr_handle_mouse(false, false);
                button_index[selected_button].activated = 0;
                selected_button = 0;
            }
        }
    }
}

button_index = 0;
option_index = 0;
