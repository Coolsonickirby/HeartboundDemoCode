function scr_player_move()
{
    if (global.player_frozen == 0 && global.combat_active == 0)
    {
        xaxis = global.right_key - global.left_key;
        yaxis = global.down_key - global.up_key;
        xpush = global.right_key - global.left_key;
        ypush = global.down_key - global.up_key;
        mask_index = spr_lore_mask;
        collide_left_x = round(bbox_left);
        collide_top_y = round(bbox_top);
        collide_right_x = round(bbox_right);
        collide_bottom_y = round(bbox_bottom);
        
        if (instance_exists(obj_character_parent))
        {
            with (obj_character_parent)
                mask_index = collision_mask;
        }
        
        if (xaxis > 0)
            global.player_direction = 1;
        else if (xaxis < 0)
            global.player_direction = 3;
        
        if (yaxis > 0)
            global.player_direction = 2;
        else if (yaxis < 0)
            global.player_direction = 4;
        
        if (xaxis != 0 && yaxis != 0)
        {
            xmove = x + (xaxis * global.player_speed_cur * 0.7);
            
            if (place_meeting(xmove, y, obj_blocker_parent))
                xaxis = 0;
            
            ymove = y + (yaxis * global.player_speed_cur * 0.7);
            
            if (place_meeting(x, ymove, obj_blocker_parent))
                yaxis = 0;
        }
        else
        {
            if (xaxis != 0)
            {
                xmove = x + (xaxis * global.player_speed_cur);
                
                if (place_meeting(xmove, y, obj_blocker_parent))
                    xaxis = 0;
            }
            
            if (yaxis != 0)
            {
                ymove = y + (yaxis * global.player_speed_cur);
                
                if (place_meeting(x, ymove, obj_blocker_parent))
                    yaxis = 0;
            }
        }
        
        if (instance_exists(obj_pushblock_parent))
        {
            with (obj_pushblock_parent)
            {
                vspeed = 0;
                hspeed = 0;
                push_vertical = 0;
                push_horizontal = 0;
                
                if (push_vertical_flag != 0)
                {
                    with (obj_player_parent)
                    {
                        if (place_meeting(x, ymove, other.id))
                        {
                            other.push_vertical = ypush;
                            yaxis = ypush;
                            
                            if (yaxis != 0)
                            {
                                ymove = y + (yaxis * global.player_speed_cur);
                                
                                if (place_meeting(x, ymove, obj_blocker_parent))
                                    yaxis = 0;
                            }
                        }
                        
                        if (place_meeting(xmove, y, other.id))
                        {
                            if (place_meeting(xmove, y, obj_pushblock_parent))
                                xaxis = 0;
                        }
                    }
                }
                else if (push_horizontal_flag != 0)
                {
                    with (obj_player_parent)
                    {
                        if (place_meeting(xmove, y, other.id))
                        {
                            other.push_horizontal = xpush;
                            xaxis = xpush;
                            
                            if (xaxis != 0)
                            {
                                xmove = x + (xaxis * global.player_speed_cur);
                                
                                if (place_meeting(xmove, y, obj_blocker_parent))
                                    xaxis = 0;
                            }
                        }
                        
                        if (place_meeting(x, ymove, other.id))
                        {
                            if (place_meeting(x, ymove, obj_pushblock_parent))
                                yaxis = 0;
                        }
                    }
                }
                else if (push_vertical_flag == 0 && push_horizontal_flag == 0)
                {
                    with (obj_player_parent)
                    {
                        if (place_meeting(xmove, y, other.id))
                        {
                            if (place_meeting(xmove, y, obj_pushblock_parent))
                                xaxis = 0;
                        }
                        
                        if (place_meeting(x, ymove, other.id))
                        {
                            if (place_meeting(x, ymove, obj_pushblock_parent))
                                yaxis = 0;
                        }
                    }
                }
                
                if (push_vertical != 0)
                {
                    other.ymove = other.y + (other.yaxis * push_speed * global.player_speed_cur);
                    vspeed = push_vertical * push_speed * global.player_speed_cur;
                    other.xaxis = 0;
                }
                else if (push_horizontal != 0)
                {
                    other.xmove = other.x + (other.xaxis * push_speed * global.player_speed_cur);
                    hspeed = push_horizontal * push_speed * global.player_speed_cur;
                    other.yaxis = 0;
                }
                
                if (vspeed != 0)
                {
                    with (obj_player_parent)
                    {
                        global.player_moving = 1;
                        image_speed = other.push_speed * global.player_speed_cur * 0.1;
                        
                        if (other.vspeed > 0)
                            sprite_index = global.clothing_array[9];
                        else
                            sprite_index = global.clothing_array[11];
                        
                        push_active = 1;
                        alarm[0] = 5;
                    }
                    
                    if (place_meeting(x, y + vspeed, obj_blockstopper) || place_meeting(x, y + vspeed, obj_pushblock_parent))
                    {
                        y -= vspeed;
                        other.yaxis = 0;
                    }
                    else
                    {
                        if (vspeed > 0)
                        {
                            image_index -= push_animation;
                            
                            if (image_index <= 0)
                                image_index = image_number - push_animation;
                        }
                        else
                        {
                            image_index += push_animation;
                            
                            if (image_index >= image_number)
                                image_index = 0;
                        }
                        
                        if (push_sound != 0)
                        {
                            if (!audio_is_playing(push_sound))
                                scr_sound_play(push_sound, 0.2, random_range(0.95, 1.05), false);
                            else
                                audio_sound_gain(push_sound, 0.2, 0);
                            
                            audio_sound_gain(push_sound, 0, 200);
                        }
                    }
                }
                
                if (hspeed != 0)
                {
                    with (obj_player_parent)
                    {
                        global.player_moving = 1;
                        image_speed = other.push_speed * global.player_speed_cur * 0.1;
                        
                        if (other.hspeed > 0)
                            sprite_index = global.clothing_array[8];
                        else
                            sprite_index = global.clothing_array[10];
                        
                        push_active = 1;
                        alarm[0] = 5;
                    }
                    
                    if (place_meeting(x + hspeed, y, obj_blockstopper) || place_meeting(x + hspeed, y, obj_pushblock_parent))
                    {
                        x -= hspeed;
                        other.xaxis = 0;
                    }
                    else
                    {
                        if (hspeed > 0)
                        {
                            image_index += push_animation;
                            
                            if (image_index >= image_number)
                                image_index = 0;
                        }
                        else
                        {
                            image_index -= push_animation;
                            
                            if (image_index <= 0)
                                image_index = image_number - push_animation;
                        }
                        
                        if (push_sound != 0)
                        {
                            if (!audio_is_playing(push_sound))
                                scr_sound_play(push_sound, 0.2, random_range(0.95, 1.05), false);
                            else
                                audio_sound_gain(push_sound, 0.2, 0);
                            
                            audio_sound_gain(push_sound, 0, 200);
                        }
                    }
                }
            }
        }
        
        if (xaxis != 0)
            x = xmove;
        
        if (yaxis != 0)
            y = ymove;
        
        if (push_active == 0)
        {
            if (yaxis == 0 && xaxis == 0)
            {
                global.player_moving = 0;
                image_speed = 0.1;
                
                switch (global.player_direction)
                {
                    case 1:
                        sprite_index = global.clothing_array[4];
                        break;
                    
                    case 2:
                        sprite_index = global.clothing_array[5];
                        break;
                    
                    case 3:
                        sprite_index = global.clothing_array[6];
                        break;
                    
                    case 4:
                        sprite_index = global.clothing_array[7];
                        break;
                }
            }
            else
            {
                global.player_moving = 1;
                image_speed = global.player_speed_cur * 0.1;
                
                switch (global.player_direction)
                {
                    case 1:
                        sprite_index = global.clothing_array[0];
                        break;
                    
                    case 2:
                        sprite_index = global.clothing_array[1];
                        break;
                    
                    case 3:
                        sprite_index = global.clothing_array[2];
                        break;
                    
                    case 4:
                        sprite_index = global.clothing_array[3];
                        break;
                }
            }
        }
        
        var nearest_blocker = instance_place(x, y, obj_blocker_parent);
        
        if (nearest_blocker != -4)
        {
            var blocker_bbox_left = nearest_blocker.bbox_left;
            var blocker_bbox_right = nearest_blocker.bbox_right;
            var blocker_bbox_top = nearest_blocker.bbox_top;
            var blocker_bbox_bottom = nearest_blocker.bbox_bottom;
            var blocker_center_x = blocker_bbox_left + ((blocker_bbox_right - blocker_bbox_left) * 0.5);
            var blocker_center_y = blocker_bbox_top + ((blocker_bbox_bottom - blocker_bbox_top) * 0.5);
            var player_x = x;
            var player_y = y + 20;
            var bounce_direction = point_direction(blocker_center_x, blocker_center_y, player_x, player_y);
            var x_length = player_x + lengthdir_x(global.player_speed_cur, bounce_direction);
            var y_length = player_y + lengthdir_y(global.player_speed_cur, bounce_direction);
            x = x_length;
            y = y_length - 20;
            show_debug_message("IMPACT ERROR: " + string(blocker_center_x) + " ||| " + string(blocker_center_y) + " ||| " + string(object_get_name(nearest_blocker.object_index)));
        }
        
        mask_index = sprite_index;
        
        if (instance_exists(obj_character_parent))
        {
            with (obj_character_parent)
                mask_index = sprite_index;
        }
    }
    else
    {
        image_speed = 0.1;
        
        switch (global.player_direction)
        {
            case 1:
                sprite_index = global.clothing_array[4];
                break;
            
            case 2:
                sprite_index = global.clothing_array[5];
                break;
            
            case 3:
                sprite_index = global.clothing_array[6];
                break;
            
            case 4:
                sprite_index = global.clothing_array[7];
                break;
        }
        
        global.player_moving = 0;
        mask_index = sprite_index;
        
        if (instance_exists(obj_character_parent))
        {
            with (obj_character_parent)
                mask_index = sprite_index;
        }
    }
}
