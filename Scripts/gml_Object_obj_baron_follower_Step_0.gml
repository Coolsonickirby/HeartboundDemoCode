if (instance_exists(obj_player_parent))
{
    anim_active = 0;
    target_x = obj_player_parent.x;
    target_y = obj_player_parent.y - 1;
    
    if (follow_x != target_x || follow_y != target_y)
    {
        ds_queue_enqueue(follow_path, target_x);
        ds_queue_enqueue(follow_path, target_y);
        ds_queue_enqueue(follow_path, global.player_direction);
        follow_x = target_x;
        follow_y = target_y;
    }
    
    if (ds_queue_size(follow_path) > follow_delay)
    {
        x = ds_queue_dequeue(follow_path);
        y = ds_queue_dequeue(follow_path);
        var follow_direction = ds_queue_dequeue(follow_path);
        
        switch (follow_direction)
        {
            case 1:
                anim_direction = "right";
                break;
            
            case 2:
                anim_direction = "down";
                break;
            
            case 3:
                anim_direction = "left";
                break;
            
            case 4:
                anim_direction = "up";
                break;
        }
        
        anim_active = 1;
    }
    
    if (anim_active == 0)
    {
        if (alarm[0] != -1)
        {
            anim_type = "stand";
            image_speed = 0.1;
        }
        else
        {
            anim_type = "sit";
            
            if (anim_direction != "up")
                image_speed = 0.1;
        }
    }
    else
    {
        anim_type = "walk";
        image_speed = 0.2;
        alarm[0] = room_speed * 5;
    }
    
    sprite_index = asset_get_index("spr_baron_" + anim_direction + "_" + anim_type);
}
