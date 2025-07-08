if (instance_exists(obj_lore))
{
    push_vertical = 0;
    push_horizontal = 0;
    
    with (obj_lore)
    {
        mask_index = spr_lore_mask;
        
        if (other.push_vertical_flag != 0)
        {
            if (place_meeting(x, ymove, other.id))
                other.push_vertical = yaxis;
        }
        
        if (other.push_horizontal_flag != 0)
        {
            if (place_meeting(xmove, y, other.id))
                other.push_horizontal = xaxis;
        }
        
        mask_index = sprite_index;
    }
    
    if (push_vertical != 0)
    {
        global.player_frozen = 1;
        vspeed = push_vertical * push_speed;
    }
    
    if (push_horizontal != 0)
    {
        global.player_frozen = 1;
        hspeed = push_horizontal * push_speed;
    }
}

if (vspeed != 0)
{
    if (place_meeting(x, y + vspeed, obj_blockstopper))
    {
        vspeed = 0;
        y -= vspeed;
        global.player_frozen = 0;
    }
}

if (hspeed != 0)
{
    if (place_meeting(x + hspeed, y, obj_blockstopper))
    {
        hspeed = 0;
        x -= hspeed;
        global.player_frozen = 0;
    }
}
