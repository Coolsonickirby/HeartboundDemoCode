if (text_complete == 0)
{
    message_len = string_length(message_text);
    textbox_x = x;
    textbox_y = y;
    
    if (new_textbox == -4 && text_border == 1)
    {
        new_textbox = instance_create_depth(textbox_x, textbox_y, 0, obj_textbox_border);
        
        with (new_textbox)
            text_fade = other.text_fade;
    }
    
    if (new_talky == -4)
    {
        switch (text_flipped)
        {
            case 0:
                var talky_x = floor(((textbox_x + (sprite_get_width(textbox_sprite) / 2)) - (sprite_get_width(cur_talky) / 2)) + 7);
                var talky_y = floor(((textbox_y + (sprite_get_height(textbox_sprite) / 2)) - (sprite_get_height(cur_talky) / 2)) + 8);
                new_talky = instance_create_depth(talky_x, talky_y, 0, obj_talky);
                break;
            
            case 1:
                var talky_x = floor(((textbox_x - (sprite_get_width(textbox_sprite) / 2)) + (sprite_get_width(cur_talky) / 2)) - 7);
                var talky_y = floor(((textbox_y + (sprite_get_height(textbox_sprite) / 2)) - (sprite_get_height(cur_talky) / 2)) + 8);
                new_talky = instance_create_depth(talky_x, talky_y, 0, obj_talky);
                new_talky.image_xscale = -1;
                break;
            
            case 2:
                var talky_x = floor(((textbox_x + (sprite_get_width(textbox_sprite) / 2)) - (sprite_get_width(cur_talky) / 2)) + 7);
                var talky_y = floor(((textbox_y - (sprite_get_height(textbox_sprite) / 2)) + (sprite_get_height(cur_talky) / 2)) - 6);
                new_talky = instance_create_depth(talky_x, talky_y, 0, obj_talky);
                new_talky.image_yscale = -1;
                break;
            
            case 3:
                var talky_x = floor(((textbox_x - (sprite_get_width(textbox_sprite) / 2)) + (sprite_get_width(cur_talky) / 2)) - 7);
                var talky_y = floor(((textbox_y - (sprite_get_height(textbox_sprite) / 2)) + (sprite_get_height(cur_talky) / 2)) - 6);
                new_talky = instance_create_depth(talky_x, talky_y, 0, obj_talky);
                new_talky.image_xscale = -1;
                new_talky.image_yscale = -1;
                break;
        }
    }
    
    if (new_con_arrow == -4)
    {
        if (text_border == 1)
        {
            if (text_location == 4 || text_location == 7 || text_location == 9)
            {
                var con_arrow_x = floor(textbox_x - (sprite_get_width(textbox_sprite) / 2) - sprite_get_width(cur_arrow));
                var con_arrow_y = floor((textbox_y + (sprite_get_height(textbox_sprite) / 2)) - (sprite_get_height(cur_arrow) / 2));
                new_con_arrow = instance_create_depth(con_arrow_x, con_arrow_y, 0, obj_con_arrow);
                
                with (new_con_arrow)
                {
                    image_index = 0;
                    image_speed = 0;
                    image_xscale = -1;
                }
            }
            else
            {
                var con_arrow_x = floor(textbox_x + (sprite_get_width(textbox_sprite) / 2) + sprite_get_width(cur_arrow));
                var con_arrow_y = floor((textbox_y + (sprite_get_height(textbox_sprite) / 2)) - (sprite_get_height(cur_arrow) / 2));
                new_con_arrow = instance_create_depth(con_arrow_x, con_arrow_y, 0, obj_con_arrow);
                
                with (new_con_arrow)
                {
                    image_index = 0;
                    image_speed = 0;
                }
            }
        }
    }
    
    if (count <= message_len)
    {
        if (alarm[0] == -1)
        {
            cur_char = string_char_at(message_text, count);
            alt_char = string_char_at(altmessage_text, count);
            
            if (cur_char == "#")
            {
                letter_offset_x_true = 0;
                letter_count = 0;
                letter_row++;
            }
            else if (cur_char != "#")
            {
                cur_language = message_language_list[count];
                
                switch (cur_language)
                {
                    case 1:
                        cur_font = spr_font_pixel;
                        global.language_map = global.letter_map;
                        cur_key = ds_map_find_value(global.language_map, cur_char);
                        alt_key = ds_map_find_value(global.language_map, alt_char);
                        break;
                    
                    case 2:
                        cur_font = spr_font_darksider;
                        global.language_map = global.glyph_map;
                        cur_key = ds_map_find_value(global.language_map, cur_char);
                        alt_key = ds_map_find_value(global.language_map, alt_char);
                        break;
                    
                    case 3:
                        cur_font = spr_font_guardian;
                        global.language_map = global.glyph_map;
                        cur_key = ds_map_find_value(global.language_map, cur_char);
                        alt_key = ds_map_find_value(global.language_map, alt_char);
                        break;
                }
                
                switch (global.language_type)
                {
                    case 0:
                        letter_offset_x = sprite_get_width(cur_font);
                        letter_offset_y = sprite_get_height(cur_font);
                        letter_padding_x = (letter_offset_x * 0.5) - 3;
                        letter_padding_y = 7;
                        break;
                    
                    case 1:
                        if (cur_language != 1)
                        {
                            letter_offset_x = sprite_get_width(cur_font);
                            letter_offset_y = 20;
                            letter_padding_x = (letter_offset_x * 0.5) - 3;
                            letter_padding_y = 7;
                        }
                        else
                        {
                            letter_offset_x = 18;
                            letter_offset_y = 20;
                            letter_padding_x = (letter_offset_x * 0.5) + 3;
                            letter_padding_y = 9;
                        }
                        
                        break;
                }
                
                letter_offset_x_true += letter_offset_x;
                var letter_location_x, letter_location_y;
                
                if (text_flipped == 1 || text_flipped == 3)
                {
                    switch (global.language_type)
                    {
                        case 0:
                            letter_location_x = floor((((textbox_x - (sprite_get_width(textbox_sprite) / 2)) + letter_offset_x_true) - letter_offset_x - letter_padding_x) + sprite_get_width(cur_talky));
                            letter_location_y = floor((textbox_y - (sprite_get_height(textbox_sprite) / 2)) + (letter_offset_y * letter_row) + letter_padding_y);
                            break;
                        
                        case 1:
                            letter_location_x = floor((((textbox_x - (sprite_get_width(textbox_sprite) / 2)) + letter_offset_x_true) - letter_offset_x - letter_padding_x) + (sprite_get_width(cur_talky) + (letter_offset_x * 0.5)));
                            letter_location_y = floor((textbox_y - (sprite_get_height(textbox_sprite) / 2)) + (letter_offset_y * letter_row) + letter_padding_y);
                            break;
                    }
                }
                else
                {
                    letter_location_x = floor(((textbox_x - (sprite_get_width(textbox_sprite) / 2)) + letter_offset_x_true) - letter_padding_x);
                    letter_location_y = floor((textbox_y - (sprite_get_height(textbox_sprite) / 2)) + (letter_offset_y * letter_row) + letter_padding_y);
                }
                
                cur_spinning = message_spinning_list[count];
                cur_flying = message_flying_list[count];
                active_color = message_color_list[count];
                new_letter = instance_create_depth(letter_location_x, letter_location_y, 0, obj_letter);
                active_speed = message_speed_list[count];
                alarm[0] = active_speed;
                active_emotion = message_emotion_list[count];
                active_voice = message_voice_list[count];
                
                with (new_letter)
                {
                    textbox_id = other.id;
                    cur_char = other.cur_char;
                    alt_char = other.alt_char;
                    
                    switch (global.language_type)
                    {
                        case 0:
                            cur_key = other.cur_key;
                            image_index = cur_key;
                            sprite_index = other.cur_font;
                            image_blend = other.active_color;
                            
                            if (other.cur_spinning == 1)
                            {
                                if (other.cur_char != " ")
                                {
                                    spin_forever = 1;
                                    alarm[4] = 1;
                                }
                            }
                            
                            if (alt_char != "_")
                            {
                                alt_key = other.alt_key;
                                var timer_amount = (room_speed * random_range(1.05, 1.15)) - (0.05 * other.count);
                                timer_amount = clamp(timer_amount, 85, 125);
                                alarm[0] = timer_amount;
                            }
                            
                            break;
                        
                        case 1:
                            switch (other.cur_language)
                            {
                                case 1:
                                    sprite_index = spr_blank;
                                    cur_char = other.cur_char;
                                    alt_char = other.alt_char;
                                    image_blend = other.active_color;
                                    
                                    if (other.cur_spinning == 1)
                                    {
                                        if (other.cur_char != " ")
                                        {
                                            spin_forever = 1;
                                            alarm[4] = 1;
                                        }
                                    }
                                    
                                    if (alt_char != "_")
                                    {
                                        var timer_amount = (room_speed * random_range(1.05, 1.15)) - (0.05 * other.count);
                                        timer_amount = clamp(timer_amount, 85, 125);
                                        alarm[0] = timer_amount;
                                    }
                                    
                                    break;
                                
                                default:
                                    cur_key = other.cur_key;
                                    image_index = cur_key;
                                    sprite_index = other.cur_font;
                                    image_blend = other.active_color;
                                    
                                    if (alt_char != "_")
                                    {
                                        alt_key = other.alt_key;
                                        var timer_amount = (room_speed * random_range(1.05, 1.15)) - (0.05 * other.count);
                                        timer_amount = clamp(timer_amount, 85, 125);
                                        show_debug_message(timer_amount);
                                        alarm[0] = timer_amount;
                                    }
                                    
                                    break;
                            }
                            
                            break;
                    }
                    
                    text_fade = other.text_fade;
                    
                    if (other.active_color == 100000000)
                    {
                        image_blend = make_color_hsv(color_shift, 255, 255);
                        alarm[2] = rainbow_timer;
                    }
                    
                    if (other.cur_flying != 0)
                    {
                        fly_direction = other.cur_flying;
                        alarm[3] = 1;
                    }
                }
                
                if (cur_language != 1)
                {
                    translate_message = 0;
                    
                    if (cur_font == spr_font_guardian)
                    {
                        if (global.language_known >= 1)
                            translate_message = 1;
                    }
                    
                    if (cur_font == spr_font_darksider)
                    {
                        if (global.language_known == 2)
                            translate_message = 1;
                    }
                    
                    if (translate_message == 1)
                    {
                        with (new_letter)
                        {
                            alt_key = other.cur_key;
                            var timer_amount = (room_speed * random_range(0.6, 0.7)) - (0.05 * other.count);
                            timer_amount = clamp(timer_amount, 60, 85);
                            alarm[0] = timer_amount;
                            translate_message = 1;
                        }
                    }
                }
                
                if (active_voice != -4 && active_voice != " ")
                    scr_sound_play(active_voice, random_range(voice_vol - 0.03, voice_vol), random_range(0.95, 1.05), false);
                
                if (new_talky != -4)
                {
                    with (new_talky)
                    {
                        sprite_index = other.active_emotion;
                        image_speed = other.anim_talky;
                    }
                }
                
                letter_count++;
            }
            
            count++;
        }
        
        if (text_skip == 1)
        {
            if (global.cancel_key && count != 2)
            {
                global.accept_key = 0;
                effect_count = 0;
                
                while (count <= message_len)
                {
                    cur_char = string_char_at(message_text, count);
                    alt_char = string_char_at(altmessage_text, count);
                    active_speed = message_speed_list[count];
                    
                    if (cur_char == "#")
                    {
                        letter_offset_x_true = 0;
                        letter_count = 0;
                        letter_row++;
                    }
                    else if (cur_char != "#")
                    {
                        cur_language = message_language_list[count];
                        
                        switch (cur_language)
                        {
                            case 1:
                                cur_font = spr_font_pixel;
                                global.language_map = global.letter_map;
                                cur_key = ds_map_find_value(global.language_map, cur_char);
                                alt_key = ds_map_find_value(global.language_map, alt_char);
                                break;
                            
                            case 2:
                                cur_font = spr_font_darksider;
                                global.language_map = global.glyph_map;
                                cur_key = ds_map_find_value(global.language_map, cur_char);
                                alt_key = ds_map_find_value(global.language_map, alt_char);
                                break;
                            
                            case 3:
                                cur_font = spr_font_guardian;
                                global.language_map = global.glyph_map;
                                cur_key = ds_map_find_value(global.language_map, cur_char);
                                alt_key = ds_map_find_value(global.language_map, alt_char);
                                break;
                        }
                        
                        switch (global.language_type)
                        {
                            case 0:
                                letter_offset_x = sprite_get_width(cur_font);
                                letter_offset_y = sprite_get_height(cur_font);
                                letter_padding_x = (letter_offset_x * 0.5) - 3;
                                letter_padding_y = 7;
                                break;
                            
                            case 1:
                                if (cur_language != 1)
                                {
                                    letter_offset_x = sprite_get_width(cur_font);
                                    letter_offset_y = 20;
                                    letter_padding_x = (letter_offset_x * 0.5) - 3;
                                    letter_padding_y = 7;
                                }
                                else
                                {
                                    letter_offset_x = 18;
                                    letter_offset_y = 20;
                                    letter_padding_x = (letter_offset_x * 0.5) + 3;
                                    letter_padding_y = 9;
                                }
                                
                                break;
                        }
                        
                        letter_offset_x_true += letter_offset_x;
                        var letter_location_x, letter_location_y;
                        
                        if (text_flipped == 1 || text_flipped == 3)
                        {
                            letter_location_x = floor((((textbox_x - (sprite_get_width(textbox_sprite) / 2)) + letter_offset_x_true) - letter_offset_x - letter_padding_x) + sprite_get_width(cur_talky));
                            letter_location_y = floor((textbox_y - (sprite_get_height(textbox_sprite) / 2)) + (letter_offset_y * letter_row) + letter_padding_y);
                        }
                        else
                        {
                            letter_location_x = floor(((textbox_x - (sprite_get_width(textbox_sprite) / 2)) + letter_offset_x_true) - letter_padding_x);
                            letter_location_y = floor((textbox_y - (sprite_get_height(textbox_sprite) / 2)) + (letter_offset_y * letter_row) + letter_padding_y);
                        }
                        
                        cur_key = ds_map_find_value(global.language_map, cur_char);
                        alt_key = ds_map_find_value(global.language_map, alt_char);
                        cur_spinning = message_spinning_list[count];
                        cur_flying = message_flying_list[count];
                        active_color = message_color_list[count];
                        new_letter = instance_create_depth(letter_location_x, letter_location_y, 0, obj_letter);
                        translate_message = 0;
                        
                        if (cur_language != 1)
                        {
                            if (cur_font == spr_font_guardian)
                            {
                                if (global.language_known >= 1)
                                    translate_message = 1;
                            }
                            
                            if (cur_font == spr_font_darksider)
                            {
                                if (global.language_known == 2)
                                    translate_message = 1;
                            }
                        }
                        
                        with (new_letter)
                        {
                            textbox_id = other.id;
                            cur_char = other.cur_char;
                            alt_char = other.alt_char;
                            translate_message = other.translate_message;
                            text_fade = other.text_fade;
                            
                            switch (global.language_type)
                            {
                                case 0:
                                    image_index = other.cur_key;
                                    sprite_index = other.cur_font;
                                    image_blend = other.active_color;
                                    
                                    if (other.cur_spinning == 1)
                                    {
                                        if (other.cur_char != " ")
                                        {
                                            spin_forever = 1;
                                            alarm[4] = 1;
                                        }
                                    }
                                    
                                    break;
                                
                                case 1:
                                    switch (other.cur_language)
                                    {
                                        case 1:
                                            sprite_index = spr_blank;
                                            cur_char = other.cur_char;
                                            alt_char = other.alt_char;
                                            image_blend = other.active_color;
                                            
                                            if (other.cur_spinning == 1)
                                            {
                                                if (other.cur_char != " ")
                                                {
                                                    spin_forever = 1;
                                                    alarm[4] = 1;
                                                }
                                            }
                                            
                                            break;
                                        
                                        default:
                                            cur_key = other.cur_key;
                                            image_index = cur_key;
                                            sprite_index = other.cur_font;
                                            image_blend = other.active_color;
                                            break;
                                    }
                                    
                                    break;
                            }
                            
                            if (other.alt_char != "_")
                                alt_key = other.alt_key;
                            else
                                cur_key = other.cur_key;
                            
                            if (other.active_color == 100000000)
                            {
                                color = ((color_shift * -other.effect_count * other.active_speed) + 765) % 255;
                                image_blend = make_color_hsv(color, 255, 255);
                                alarm[2] = rainbow_timer;
                            }
                            
                            if (other.cur_spinning == 1)
                            {
                                if (other.cur_char != " ")
                                {
                                    spin_forever = 1;
                                    
                                    switch (global.language_type)
                                    {
                                        case 0:
                                            image_speed = random_range(1, 2);
                                            break;
                                        
                                        case 1:
                                            alarm[4] = 1;
                                            break;
                                    }
                                }
                            }
                            
                            if (other.cur_flying != 0)
                            {
                                fly_direction = other.cur_flying;
                                alarm[3] = 1;
                                move_counter = other.effect_count * -other.active_speed;
                                x = x_anchor + (sin(move_counter * x_freq) * x_max);
                                y = y_anchor + (sin(move_counter * y_freq) * y_max);
                            }
                        }
                        
                        active_emotion = message_emotion_list[count];
                        
                        with (new_talky)
                        {
                            sprite_index = other.active_emotion;
                            image_speed = other.anim_talky;
                        }
                        
                        letter_count++;
                        effect_count++;
                    }
                    
                    count++;
                }
                
                with (obj_letter)
                {
                    if (alarm[0] != 0 || alarm[1] != 0)
                    {
                        if (spin_forever == 0)
                        {
                            image_speed = 0;
                            alarm[4] = 0;
                        }
                        
                        alarm[0] = 0;
                        alarm[1] = 0;
                        
                        switch (global.language_type)
                        {
                            case 0:
                                if (alt_key != -1)
                                    image_index = alt_key;
                                else
                                    image_index = cur_key;
                                
                                break;
                            
                            case 1:
                                switch (other.cur_language)
                                {
                                    case 1:
                                        if (alt_char != "_")
                                            cur_char = alt_char;
                                        
                                        break;
                                    
                                    default:
                                        if (alt_key != -1)
                                            image_index = alt_key;
                                        else
                                            image_index = cur_key;
                                        
                                        break;
                                }
                                
                                break;
                        }
                        
                        if (translate_message == 1)
                            sprite_index = spr_font_pixel;
                    }
                }
            }
        }
    }
    
    if (count > message_len)
    {
        if (global.menu_active == 1 && global.current_menu == 3)
        {
            if (global.option_number > 0)
            {
                var button_offset_x = 1.5;
                var button_offset_y = 0;
                
                switch (global.language_type)
                {
                    case 0:
                        button_offset_x = 1.5;
                        button_offset_y = 0;
                        break;
                    
                    case 1:
                        if (cur_language == 1)
                        {
                            button_offset_x = 0.75;
                            button_offset_y = 2;
                        }
                        
                        break;
                }
                
                if (!instance_exists(obj_button_dialog_1))
                {
                    var button_location_x = floor((textbox_x - (sprite_get_width(textbox_sprite) / 2)) + (letter_offset_x * button_offset_x));
                    var button_location_y = floor(((textbox_y - (sprite_get_height(textbox_sprite) / 2)) + (letter_offset_y * 1.5) + letter_padding_y) - button_offset_y);
                    instance_create_depth(button_location_x, button_location_y, 0, obj_button_dialog_1);
                }
                
                if (global.option_number > 1)
                {
                    if (!instance_exists(obj_button_dialog_2))
                    {
                        var button_location_x = floor((textbox_x - (sprite_get_width(textbox_sprite) / 2)) + (letter_offset_x * button_offset_x));
                        var button_location_y = floor(((textbox_y - (sprite_get_height(textbox_sprite) / 2)) + (letter_offset_y * 2.5) + letter_padding_y) - button_offset_y);
                        instance_create_depth(button_location_x, button_location_y, 0, obj_button_dialog_2);
                    }
                    
                    if (global.option_number > 2)
                    {
                        button_offset_x = 17.5;
                        button_offset_y = 0;
                        
                        switch (global.language_type)
                        {
                            case 0:
                                button_offset_x = 17.5;
                                button_offset_y = 0;
                                break;
                            
                            case 1:
                                if (cur_language == 1)
                                {
                                    button_offset_x = 10.75;
                                    button_offset_y = 2;
                                }
                                
                                break;
                        }
                        
                        if (!instance_exists(obj_button_dialog_3))
                        {
                            var button_location_x = floor((textbox_x - (sprite_get_width(textbox_sprite) / 2)) + (letter_offset_x * button_offset_x));
                            var button_location_y = floor(((textbox_y - (sprite_get_height(textbox_sprite) / 2)) + (letter_offset_y * 1.5) + letter_padding_y) - button_offset_y);
                            instance_create_depth(button_location_x, button_location_y, 0, obj_button_dialog_3);
                        }
                        
                        if (global.option_number > 3)
                        {
                            if (!instance_exists(obj_button_dialog_4))
                            {
                                var button_location_x = floor((textbox_x - (sprite_get_width(textbox_sprite) / 2)) + (letter_offset_x * button_offset_x));
                                var button_location_y = floor(((textbox_y - (sprite_get_height(textbox_sprite) / 2)) + (letter_offset_y * 2.5) + letter_padding_y) - button_offset_y);
                                instance_create_depth(button_location_x, button_location_y, 0, obj_button_dialog_4);
                            }
                        }
                    }
                }
            }
        }
        
        if (instance_exists(obj_con_arrow))
        {
            with (obj_con_arrow)
                image_speed = other.anim_arrow;
        }
        
        if (text_timer != 0)
            alarm[text_timer_type] = text_timer;
        
        text_complete = 1;
        
        if (instance_exists(stored_talker))
        {
            with (stored_talker)
                text_complete = 1;
        }
    }
}
