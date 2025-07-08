scr_sound_play(snd_darkworld_dogbreak, 0.4, 1, false);
audio_stop_sound(snd_darkworld_dogcharge);
instance_create_depth(x - 20, y + 10, 0, obj_portals_lifespark_1);
instance_create_depth(x, y, 0, obj_portals_lifespark_2);
instance_create_depth(x + 20, y + 10, 0, obj_portals_lifespark_3);
alarm[3] = 1;
