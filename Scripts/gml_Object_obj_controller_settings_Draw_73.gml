if (settings_active == 1)
{
    buffer_set_surface(screenshot_buffer, application_surface, 0);
    
    if (!surface_exists(global.settings_surface))
        global.settings_surface = surface_create(cam_w, cam_h);
    
    surface_set_target(global.settings_surface);
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_clear_alpha(c_black, 0);
    draw_rectangle_color(cam_x, cam_y, cam_x + cam_w, cam_y + cam_h, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_circle(x - cam_x, y - cam_y, size_cur, false);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true, true, true, true);
    gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
    
    with (obj_settings_frog)
        draw_self();
    
    with (obj_settings_cancel)
    {
        if (button_active)
            draw_sprite(sprite_index, 2, x, y);
        
        draw_self();
    }
    
    with (obj_settings_volume)
    {
        if (button_active == 1)
            arrow_color = 65535;
        else
            arrow_color = 16777215;
        
        draw_sprite_ext(spr_settings_volume_arrow, 0, x, vol_y, image_xscale, image_yscale, image_angle, arrow_color, image_alpha);
        draw_self();
        draw_sprite_ext(spr_settings_volume_arrow, 1, x, vol_y, image_xscale, image_yscale, image_angle, arrow_color, image_alpha);
    }
    
    with (obj_settings_menu)
    {
        draw_self();
        draw_sprite(spr_settings_menu, global.control_type, x, y);
    }
    
    with (obj_settings_wiggle)
    {
        if (button_active == 1)
            image_blend = c_yellow;
        else
            image_blend = c_white;
        
        draw_self();
        
        if (global.wiggletext_active == 1)
            draw_sprite(spr_settings_checked, 0, x, y);
    }
    
    with (obj_settings_fullscreen)
    {
        if (button_active == 1)
            image_blend = c_yellow;
        else
            image_blend = c_white;
        
        draw_self();
        
        if (window_get_fullscreen())
            draw_sprite(spr_settings_checked, 0, x, y);
    }
    
    draw_text_transformed_color(cam_center_x - offset_settings, cam_center_y - 160, global.dialog_array[6000][1], 2, 2, image_angle, c_white, c_white, c_white, c_white, image_alpha);
    draw_text_color(obj_settings_volume.x - offset_volume, obj_settings_volume.y - 32, global.dialog_array[6001][1], c_white, c_white, c_white, c_white, image_alpha);
    draw_text_color(obj_settings_menu.x - offset_menu, obj_settings_menu.y - 45, global.dialog_array[6005][1], c_white, c_white, c_white, c_white, image_alpha);
    draw_text_color(obj_settings_fullscreen.x - offset_fullscreen, obj_settings_fullscreen.y - 45, global.dialog_array[6006][1], c_white, c_white, c_white, c_white, image_alpha);
    
    with (obj_settings_letter)
    {
        switch (global.game_language)
        {
            case "JAJP":
                draw_text_transformed_colour(x, y, string_hash_to_newline(cur_char), image_xscale, image_yscale, image_angle, image_blend, image_blend, image_blend, image_blend, image_alpha);
                break;
            
            default:
                image_index = round(image_index);
                draw_self();
                break;
        }
    }
    
    switch (menu_type)
    {
        case 0:
            draw_text_color((obj_settings_keybind_w.x - offset_movement) + 70, obj_settings_keybind_w.y - 50, global.dialog_array[6002][1], c_white, c_white, c_white, c_white, image_alpha);
            draw_text_color((obj_settings_keybind_z.x - offset_accept) + 20, obj_settings_keybind_z.y - 50, global.dialog_array[6003][1], c_white, c_white, c_white, c_white, image_alpha);
            draw_text_color((obj_settings_keybind_x.x - offset_skip) + 20, obj_settings_keybind_x.y - 50, global.dialog_array[6004][1], c_white, c_white, c_white, c_white, image_alpha);
            
            with (obj_settings_arrow_parent)
            {
                draw_self();
                draw_set_halign(fa_center);
                draw_set_valign(fa_middle);
                draw_text_ext_transformed_color(x, (y - global.font_offset) + global.glyph_offset, button_text, 0, sprite_width, 1, 1, image_angle, 0, 0, 0, 0, image_alpha);
                draw_set_halign(fa_left);
                draw_set_valign(fa_top);
            }
            
            with (obj_settings_mouse_parent)
                draw_self();
            
            with (obj_settings_keybind_parent)
            {
                if (button_active == 1)
                    image_blend = c_yellow;
                else
                    image_blend = c_white;
                
                draw_self();
                draw_set_halign(fa_center);
                draw_set_valign(fa_middle);
                
                if (button_selected == 0)
                    draw_text_ext_transformed_color(x, (y - global.font_offset) + global.glyph_offset, button_text, 0, sprite_width, 1, 1, image_angle, 0, 0, 0, 0, image_alpha);
                else
                    draw_sprite_ext(spr_font_guardian, button_text, x - font_offset_x, y - font_offset_y, image_xscale, image_yscale, image_angle, c_black, image_alpha);
            }
            
            draw_set_halign(fa_left);
            draw_set_valign(fa_top);
            break;
        
        case 1:
            draw_text_color(obj_settings_controller_up.x - offset_buttons, obj_settings_controller_up.y - 44, global.dialog_array[6007][1], c_white, c_white, c_white, c_white, image_alpha);
            draw_text_color(obj_settings_controller_type.x - offset_style, obj_settings_controller_type.y - 44, global.dialog_array[6008][1], c_white, c_white, c_white, c_white, image_alpha);
            
            with (obj_settings_controller_type)
            {
                if (button_active == 1)
                    image_blend = c_yellow;
                else
                    image_blend = c_white;
                
                draw_self();
                draw_set_halign(fa_center);
                draw_set_valign(fa_middle);
                draw_text_ext_transformed_color(x, (y - global.font_offset) + global.glyph_offset, button_text, 0, sprite_width, 1, 1, image_angle, 0, 0, 0, 0, image_alpha);
                draw_set_halign(fa_left);
                draw_set_valign(fa_top);
            }
            
            with (obj_settings_controller_keybind_parent)
            {
                if (button_active == 1)
                    image_blend = c_yellow;
                else
                    image_blend = c_white;
                
                draw_self();
                draw_set_halign(fa_center);
                draw_set_valign(fa_middle);
                
                if (button_selected == 0)
                    draw_text_ext_transformed_color(x, (y - global.font_offset) + global.glyph_offset, button_text, 0, sprite_width, 1, 1, image_angle, 0, 0, 0, 0, image_alpha);
                else
                    draw_sprite_ext(spr_font_guardian, button_text, x - font_offset_x, y - font_offset_y, image_xscale, image_yscale, image_angle, c_black, image_alpha);
            }
            
            draw_set_halign(fa_left);
            draw_set_valign(fa_top);
            draw_text_color(obj_settings_controller_down.x + 20, obj_settings_controller_down.y - 9, "- " + global.dialog_array[6003][1], c_white, c_white, c_white, c_white, image_alpha);
            draw_text_color(obj_settings_controller_right.x + 20, obj_settings_controller_right.y - 9, "- " + global.dialog_array[6004][1], c_white, c_white, c_white, c_white, image_alpha);
            break;
    }
    
    if (menu_type == 0)
        draw_sprite(spr_cursor_heart, 0, round(mouse_x) - cam_x, round(mouse_y) - cam_y);
    
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    surface_reset_target();
    draw_surface(global.settings_surface, cam_x, cam_y);
}
