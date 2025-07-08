with (instance_create_depth(x, y, 0, obj_fade))
{
    next_room = global_worldpath;
    next_color = 0;
    fadein_timer = 0.02;
    fadeout_timer = 0.02;
    fadepause_timer = 2;
    fadeout_amount = 0.01;
    fadein_amount = 0.05;
    fade_out = true;
    alarm[1] = room_speed * fadeout_timer;
}
