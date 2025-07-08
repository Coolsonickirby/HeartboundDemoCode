fader = instance_create_depth(x, y, 0, obj_fade);

with (fader)
{
    next_room = darkworld_portals;
    next_color = 16777215;
    fadein_timer = 0.02;
    fadeout_timer = 0.02;
    fadepause_timer = 0.5;
    fadeout_amount = 0.01;
    fadein_amount = 0.05;
    fade_out = true;
    alarm[1] = room_speed * fadeout_timer;
}

scr_sound_play(snd_whitefade, 1, 1, false);
