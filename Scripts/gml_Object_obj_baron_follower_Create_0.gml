event_inherited();
collision_mask = spr_blank_mask;
image_speed = 0.1;
anim_direction = "right";
anim_type = "stand";
anim_active = 0;
swap_type = 0;
follow_x = x;
follow_y = y;
target_x = x;
target_y = y;

if (instance_exists(obj_player_parent))
{
    follow_x = obj_player_parent.x;
    follow_y = obj_player_parent.y;
    target_x = obj_player_parent.x;
    target_x = obj_player_parent.y;
}

follow_path = ds_queue_create();
follow_delay = 75;
alarm[0] = room_speed * 5;
x = follow_x;
y = follow_y;
var follow_direction = global.player_direction;

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

sprite_index = asset_get_index("spr_baron_" + anim_direction + "_stand");
