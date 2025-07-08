if (glow_alpha < 1)
{
    glow_alpha += 0.005;
    alarm[1] = 1;
}
else
{
    glow_alpha = 1;
    alarm[2] = room_speed * 0.5;
    
    with (obj_portal_parent)
        alarm[2] = room_speed * 4.5;
}
