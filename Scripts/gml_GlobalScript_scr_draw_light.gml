function scr_draw_light()
{
    if (light_activate == 1)
    {
        light_activate = 0;
        gpu_set_blendmode_ext(9, bm_one);
        
        switch (light_direction)
        {
            case 0:
                var lighted_x = floor(x - sprite_get_xoffset(sprite_index));
                var lighted_y = floor(y - sprite_get_yoffset(sprite_index));
                
                if (last_image != image_index || last_sprite != sprite_index)
                {
                    last_image = image_index;
                    last_sprite = sprite_index;
                    var light_distance = floor(x - light_caster.x);
                    
                    if (light_distance < 1)
                        light_distance = 1;
                    
                    if (last_blend != light_caster.image_blend)
                    {
                        light_hue = color_get_hue(light_caster.image_blend);
                        light_saturation = color_get_saturation(light_caster.image_blend);
                        last_blend = light_caster.image_blend;
                    }
                    
                    var light_value = light_luminosity * ((light_caster.sprite_width - light_distance) / light_caster.sprite_width);
                    light_value = clamp(light_value, 0, 255);
                    
                    for (yy = 0; yy <= (sprite_height - 1); yy++)
                    {
                        for (xx = 0; xx <= (sprite_width - 1); xx++)
                        {
                            if (position_meeting(lighted_x + xx, lighted_y + yy, object_index))
                            {
                                pixels_found = 1;
                                
                                repeat (light_diffuse)
                                {
                                    if (position_meeting(lighted_x + xx, lighted_y + yy, object_index))
                                    {
                                        var draw_x = floor(lighted_x + xx);
                                        var draw_y = floor(lighted_y + yy);
                                        var new_value = light_value - (pixels_found * light_falloff);
                                        
                                        if (new_value < 0)
                                            new_value = 0;
                                        
                                        var draw_color = make_color_hsv(light_hue, light_saturation, new_value);
                                        draw_sprite_ext(spr_pixel, 0, draw_x, draw_y, image_xscale, image_yscale, image_angle, draw_color, image_alpha);
                                        pixels_found++;
                                        xx++;
                                    }
                                }
                                
                                break;
                            }
                        }
                    }
                }
                
                break;
            
            case 2:
                var lighted_x = floor(x - sprite_get_xoffset(sprite_index));
                var lighted_y = floor(y - sprite_get_yoffset(sprite_index));
                
                if (last_image != image_index || last_sprite != sprite_index)
                {
                    last_image = image_index;
                    last_sprite = sprite_index;
                    var light_distance = floor(light_caster.x - x);
                    
                    if (light_distance < 1)
                        light_distance = 1;
                    
                    if (last_blend != light_caster.image_blend)
                    {
                        light_hue = color_get_hue(light_caster.image_blend);
                        light_saturation = color_get_saturation(light_caster.image_blend);
                        last_blend = light_caster.image_blend;
                    }
                    
                    var light_value = light_luminosity * ((light_caster.sprite_width - light_distance) / light_caster.sprite_width);
                    light_value = clamp(light_value, 0, 255);
                    
                    for (yy = 0; yy <= (sprite_height - 1); yy++)
                    {
                        xx = sprite_width - 1;
                        
                        while (xx >= 0)
                        {
                            if (position_meeting(lighted_x + xx, lighted_y + yy, object_index))
                            {
                                pixels_found = 1;
                                
                                repeat (light_diffuse)
                                {
                                    if (position_meeting(lighted_x + xx, lighted_y + yy, object_index))
                                    {
                                        var draw_x = floor(lighted_x + xx);
                                        var draw_y = floor(lighted_y + yy);
                                        var new_value = light_value - (pixels_found * light_falloff);
                                        
                                        if (new_value < 0)
                                            new_value = 0;
                                        
                                        var draw_color = make_color_hsv(light_hue, light_saturation, new_value);
                                        draw_sprite_ext(spr_pixel, 0, draw_x, draw_y, image_xscale, image_yscale, image_angle, draw_color, image_alpha);
                                        pixels_found++;
                                        xx--;
                                    }
                                }
                                
                                break;
                            }
                            
                            xx--;
                        }
                    }
                }
                
                break;
            
            case 3:
                var draw_hue = color_get_hue(light_caster.image_blend);
                var draw_saturation = color_get_saturation(light_caster.image_blend);
                var light_distance = floor(light_caster.y - y - (sprite_height * 0.5));
                
                if (light_distance < 1)
                    light_distance = 1;
                
                var new_value = light_luminosity * ((light_caster.sprite_height - light_distance) / light_caster.sprite_height);
                
                if (new_value > 255)
                    new_value = 255;
                
                if (new_value < 0)
                    new_value = 0;
                
                var draw_color = make_color_hsv(draw_hue, draw_saturation, new_value);
                var light_side = sign(light_caster.x - x);
                
                switch (light_side)
                {
                    case -1:
                        var light_x_offset = (light_caster.x + (light_caster.sprite_width * 0.5)) - (x - (sprite_width * 0.5));
                        draw_sprite_part_ext(sprite_index, image_index, 0, 0, light_x_offset, sprite_height, ceil(x - (sprite_width * 0.5)), ceil(y - (sprite_height * 0.5)), image_xscale, image_yscale, draw_color, image_alpha);
                        break;
                    
                    case 1:
                        var light_x_offset = (x + (sprite_width * 0.5)) - (light_caster.x - (light_caster.sprite_width * 0.5));
                        draw_sprite_part_ext(sprite_index, image_index, sprite_width - light_x_offset, 0, sprite_width * 2, sprite_height, ceil((x - (sprite_width * 0.5) - light_x_offset) + sprite_width), ceil(y - (sprite_height * 0.5)), image_xscale, image_yscale, draw_color, image_alpha);
                        break;
                }
                
                break;
        }
        
        gpu_set_blendmode(bm_normal);
    }
}
