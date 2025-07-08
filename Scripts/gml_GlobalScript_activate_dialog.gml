function activate_dialog()
{
    with (obj_textbox)
    {
        if (stored_talker == global.current_talker)
            instance_destroy();
    }
    
    if (room != menu_language && room != menu_main && room != home_bedroom)
    {
        if (global.pirated_game == 1)
        {
            var random_pirate = irandom(10);
            
            if (random_pirate == 0)
            {
                for (xx = 1; xx <= 10000; xx++)
                {
                    global.dialog_array[xx][1] = "~8_^100000000_THIS YARRR SHOULD NOT APPEAR #~0_^16775416_Tweet at PirateSoftware with a #screenshot to fix this bug.";
                    global.dialog_array[xx][2] = UnknownEnum.Value_13;
                }
            }
        }
    }
    
    if (global.dialog_array[cur_message][2] == UnknownEnum.Value_13)
    {
        if (!audio_is_playing(snd_music_pirate))
        {
            audio_stop_all();
            scr_sound_play(snd_music_pirate, 0.3, 1, true);
        }
        
        scr_sound_play(snd_voice_pirate, 0.3, random_range(0.8, 1.2), false);
    }
    
    var count = 1;
    var char_count = 1;
    var active_language = 1;
    var active_spinning = 0;
    var active_flying = 0;
    var active_speed = 1;
    var active_voice = 0;
    var active_color = 16777215;
    var alt_char = "_";
    active_talky = 0;
    global.current_talker = id;
    global.conv_talking = 1;
    base_message = global.dialog_array[cur_message][1];
    character_index = global.dialog_array[cur_message][2];
    active_talky = global.talky_list[character_index][1];
    active_voice = global.voice_list[character_index][1];
    talking_state = 1;
    
    while (count <= string_length(base_message))
    {
        cur_char = string_char_at(base_message, count);
        
        switch (cur_char)
        {
            case "*":
                count++;
                cur_language = "";
                
                while (string_pos(cur_char, "_") == 0)
                {
                    cur_char = string_char_at(base_message, count);
                    cur_language += cur_char;
                    count++;
                    cur_char = string_char_at(base_message, count);
                }
                
                active_language = real(cur_language);
                cur_char = string_char_at(base_message, count);
                break;
            
            case "&":
                count++;
                cur_spinning = "";
                
                while (string_pos(cur_char, "_") == 0)
                {
                    cur_char = string_char_at(base_message, count);
                    cur_spinning += cur_char;
                    count++;
                    cur_char = string_char_at(base_message, count);
                }
                
                active_spinning = real(cur_spinning);
                cur_char = string_char_at(base_message, count);
                break;
            
            case "~":
                count++;
                cur_flying = "";
                
                while (string_pos(cur_char, "_") == 0)
                {
                    cur_char = string_char_at(base_message, count);
                    cur_flying += cur_char;
                    count++;
                    cur_char = string_char_at(base_message, count);
                }
                
                active_flying = real(cur_flying);
                cur_char = string_char_at(base_message, count);
                break;
            
            case "$":
                count++;
                cur_speed = "";
                
                while (string_pos(cur_char, "_") == 0)
                {
                    cur_char = string_char_at(base_message, count);
                    cur_speed += cur_char;
                    count++;
                    cur_char = string_char_at(base_message, count);
                }
                
                active_speed = real(cur_speed);
                cur_char = string_char_at(base_message, count);
                break;
            
            case "^":
                count++;
                cur_color = "";
                
                while (string_pos(cur_char, "_") == 0)
                {
                    cur_char = string_char_at(base_message, count);
                    cur_color += cur_char;
                    count++;
                    cur_char = string_char_at(base_message, count);
                }
                
                active_color = real(cur_color);
                cur_char = string_char_at(base_message, count);
                break;
            
            case "%":
                count++;
                cur_emotion = "";
                
                while (string_pos(cur_char, "_") == 0)
                {
                    cur_char = string_char_at(base_message, count);
                    cur_emotion += cur_char;
                    count++;
                    cur_char = string_char_at(base_message, count);
                }
                
                selected_emotion = real(cur_emotion);
                active_talky = global.talky_list[character_index][selected_emotion];
                active_voice = global.voice_list[character_index][selected_emotion];
                cur_char = string_char_at(base_message, count);
                break;
            
            case "@":
                count++;
                cur_char = string_char_at(base_message, count);
                
                while (string_pos(cur_char, "@") == 0)
                {
                    cur_char = string_char_at(base_message, count);
                    message_language_list[char_count] = active_language;
                    message_spinning_list[char_count] = active_spinning;
                    message_flying_list[char_count] = active_flying;
                    message_speed_list[char_count] = active_speed;
                    message_color_list[char_count] = active_color;
                    message_emotion_list[char_count] = active_talky;
                    
                    if (cur_char == " ")
                        message_voice_list[char_count] = " ";
                    
                    if (cur_char != " ")
                        message_voice_list[char_count] = active_voice;
                    
                    message_text += cur_char;
                    count++;
                    char_count++;
                    cur_char = string_char_at(base_message, count);
                }
                
                if (cur_char == "@")
                {
                    count++;
                    cur_char = string_char_at(base_message, count);
                    
                    while (string_pos(cur_char, "@") == 0)
                    {
                        cur_char = string_char_at(base_message, count);
                        altmessage_text += cur_char;
                        count++;
                        cur_char = string_char_at(base_message, count);
                    }
                }
                
                break;
            
            default:
                message_language_list[char_count] = active_language;
                message_spinning_list[char_count] = active_spinning;
                message_flying_list[char_count] = active_flying;
                message_speed_list[char_count] = active_speed;
                message_color_list[char_count] = active_color;
                message_emotion_list[char_count] = active_talky;
                
                if (cur_char == " ")
                    message_voice_list[char_count] = " ";
                
                if (cur_char != " ")
                    message_voice_list[char_count] = active_voice;
                
                message_text += cur_char;
                altmessage_text += alt_char;
                char_count++;
                break;
        }
        
        count++;
    }
    
    with (instance_create_depth(x, y, 0, obj_textbox))
    {
        stored_talker = global.current_talker;
        text_flipped = other.text_flipped;
        text_border = other.text_border;
        text_skip = other.text_skip;
        text_fade = other.text_fade;
        text_timer = other.text_timer;
        text_timer_type = other.text_timer_type;
        text_location = other.text_location;
        message_language_list = other.message_language_list;
        message_speed_list = other.message_speed_list;
        message_voice_list = other.message_voice_list;
        message_emotion_list = other.message_emotion_list;
        message_color_list = other.message_color_list;
        message_spinning_list = other.message_spinning_list;
        message_flying_list = other.message_flying_list;
        message_text = other.message_text;
        altmessage_text = other.altmessage_text;
        
        switch (other.text_location)
        {
            case 0:
                x = floor(camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) / 2));
                y = floor((camera_get_view_y(view_camera[view_current]) + camera_get_view_height(view_camera[view_current])) - (sprite_get_height(textbox_sprite) / 2) - (sprite_get_height(textbox_sprite) / 6));
                break;
            
            case 1:
                x = floor(camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) / 2));
                y = floor(camera_get_view_y(view_camera[view_current]) + (sprite_get_height(spr_blank_talky) / 2) + (sprite_get_height(spr_blank_talky) / 4));
                break;
            
            case 2:
                x = floor(camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) / 2));
                y = floor(camera_get_view_y(view_camera[view_current]) + (sprite_get_height(spr_blank_talky) / 4) + (sprite_get_height(spr_blank_talky) / 8));
                break;
            
            case 3:
                x = floor(camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) / 2)) - 65;
                y = floor((camera_get_view_y(view_camera[view_current]) + camera_get_view_height(view_camera[view_current])) - (sprite_get_height(textbox_sprite) / 2) - (sprite_get_height(textbox_sprite) / 6));
                break;
            
            case 4:
                x = floor(camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) / 2)) + 65;
                y = floor((camera_get_view_y(view_camera[view_current]) + camera_get_view_height(view_camera[view_current])) - (sprite_get_height(textbox_sprite) / 2) - (sprite_get_height(textbox_sprite) / 6));
                break;
            
            case 5:
                x = floor(camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) / 2));
                y = floor(camera_get_view_y(view_camera[view_current]) + (camera_get_view_height(view_camera[view_current]) / 2));
                break;
            
            case 6:
                x = floor(camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) / 2)) - 65;
                y = floor(camera_get_view_y(view_camera[view_current]) + (sprite_get_height(spr_blank_talky) / 4) + (sprite_get_height(spr_blank_talky) / 8));
                break;
            
            case 7:
                x = floor(camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) / 2)) + 65;
                y = floor(camera_get_view_y(view_camera[view_current]) + (sprite_get_height(spr_blank_talky) / 4) + (sprite_get_height(spr_blank_talky) / 8));
                break;
            
            case 8:
                x = floor(camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) / 2)) - 65;
                y = floor(camera_get_view_y(view_camera[view_current]) + (camera_get_view_height(view_camera[view_current]) / 2));
                break;
            
            case 9:
                x = floor(camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) / 2)) + 65;
                y = floor(camera_get_view_y(view_camera[view_current]) + (camera_get_view_height(view_camera[view_current]) / 2));
                break;
            
            case 10:
                x = other.x;
                y = other.y;
                break;
        }
    }
    
    message_language_list = 0;
    message_speed_list = 0;
    message_voice_list = 0;
    message_emotion_list = 0;
    message_color_list = 0;
    message_spinning_list = 0;
    message_flying_list = 0;
    message_text = "";
    altmessage_text = "";
    
    if (text_move == 0)
        global.player_frozen = 1;
}

enum UnknownEnum
{
    Value_13 = 13
}
