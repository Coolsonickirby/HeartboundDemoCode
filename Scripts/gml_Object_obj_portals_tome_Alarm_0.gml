if (image_alpha < 1)
{
    image_alpha += alpha_speed;
    alarm[0] = 1;
}
else
{
    image_alpha = 1;
    sprite_index = spr_portals_tome_eye_opening;
}

audio_sound_gain(snd_music_binder_weird, 0.2, 2000);
