with (instance_create_depth(x, y, 0, obj_fade_credits))
{
    player_x = 0;
    player_y = 0;
    next_color = 0;
    fadein_timer = 0.02;
    fadeout_timer = 0.02;
    fadepause_timer = 0.02;
    fadeout_amount = 0.05;
    fadein_amount = 0.05;
    fade_out = true;
    
    switch (room)
    {
        case menu_credits:
            next_room = credits_hometown;
            break;
        
        case credits_hometown:
            next_room = credits_tower;
            break;
        
        case credits_tower:
            next_room = credits_muspelheim;
            break;
        
        case credits_muspelheim:
            next_room = credits_animus;
            break;
        
        case credits_animus:
            next_room = credits_niflheim;
            break;
        
        case credits_niflheim:
            next_room = credits_hometown;
            break;
    }
    
    alarm[1] = room_speed * fadeout_timer;
}

alarm[1] = room_speed * 30;
