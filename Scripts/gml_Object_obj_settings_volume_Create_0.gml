event_inherited();
button_sound = snd_button_1;
vol_max = y + 13;
vol_min = vol_max + 133;
vol_total = vol_min - vol_max;
vol_y = clamp(vol_min - (global.volume_main * vol_total), vol_max, vol_min);
