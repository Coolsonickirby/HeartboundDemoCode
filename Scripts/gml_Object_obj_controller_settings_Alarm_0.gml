screenshot_buffer = buffer_create(3686400, buffer_fixed, 1);
buffer_get_surface(screenshot_buffer, application_surface, 0);
instance_deactivate_all(true);
instance_activate_object(obj_view);
instance_activate_object(obj_mouse);
instance_activate_object(obj_controller_buttons);
instance_activate_object(obj_controller_inputs);
instance_activate_object(obj_controller_dialog);
instance_activate_object(obj_music_parent);
offset_settings = string_width(global.dialog_array[6000][1]);
offset_volume = string_width(global.dialog_array[6001][1]) * 0.5;
offset_movement = string_width(global.dialog_array[6002][1]) * 0.5;
offset_accept = string_width(global.dialog_array[6003][1]) * 0.5;
offset_skip = string_width(global.dialog_array[6004][1]) * 0.5;
offset_menu = string_width(global.dialog_array[6005][1]) * 0.5;
offset_fullscreen = string_width(global.dialog_array[6006][1]) * 0.5;
offset_buttons = string_width(global.dialog_array[6007][1]) * 0.5;
offset_style = string_width(global.dialog_array[6008][1]) * 0.5;

if (global.storyline_array[371] == 1)
    instance_create_depth(-50, -50, depth, obj_settings_frog);

instance_create_depth(608 + cam_offset, 32 + cam_offset, depth, obj_settings_cancel);
volume_x = (cam_center_x - 220) + cam_offset;
volume_y = (cam_center_y - 48) + cam_offset;
instance_create_depth(volume_x, volume_y, depth, obj_settings_volume);
fullscreen_x = cam_center_x + 220 + cam_offset;
fullscreen_y = (cam_center_y - 10) + cam_offset;
instance_create_depth(fullscreen_x, fullscreen_y - 40, depth, obj_settings_menu);
instance_create_depth(fullscreen_x, fullscreen_y + 40, depth, obj_settings_wiggle);
instance_create_depth(fullscreen_x, fullscreen_y + 125, depth, obj_settings_fullscreen);

switch (global.game_language)
{
    case "JAJP":
        wiggle_buffer = 13;
        break;
    
    default:
        wiggle_buffer = 10;
        break;
}

wiggle_length = string_length(global.dialog_array[6009][1]);
wiggle_offset = wiggle_length * wiggle_buffer * 0.5;
wiggle_start = obj_settings_wiggle.x - wiggle_offset;

for (xx = 0; xx < wiggle_length; xx++)
{
    letter_index = instance_create_depth(wiggle_start + (xx * wiggle_buffer), obj_settings_wiggle.y - 45, 0, obj_settings_letter);
    letter_char = string_char_at(global.dialog_array[6009][1], xx + 1);
    
    switch (global.game_language)
    {
        case "JAJP":
            letter_index.cur_char = letter_char;
            break;
        
        default:
            letter_index.sprite_index = spr_font_pixel;
            letter_index.image_index = ds_map_find_value(global.letter_map, letter_char);
            break;
    }
}

switch (global.game_language)
{
    case "JAJP":
        wiggle_buffer = 13;
        break;
    
    default:
        wiggle_buffer = 10;
        break;
}

menu_type = -1;
global.settings_surface = surface_create(cam_w, cam_h);
settings_active = 1;
alarm[1] = 1;
