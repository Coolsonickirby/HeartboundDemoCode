effect_active = 1;

if (global.combat_active)
    effect_vol[0] = random_range(0.015, 0.02);

scr_sound_play(effect_new[0], effect_vol[0], effect_pit[0], false);
alarm[3] = room_speed * random_range(0.75, 1);
