sprite_index = spr_portals_tome_beam;
audio_stop_sound(snd_barghest_dodge_charge);
scr_sound_play(snd_barghest_dodge_blast, 0.1, 1.2, true);
audio_sound_gain(snd_barghest_dodge_blast, 0, 2000);

with (obj_portals_baron)
{
    sprite_index = spr_baron_float_up;
    image_speed = 0.1;
    image_index = 0;
    depth = -400;
}
