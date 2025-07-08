if (sprite_index == spr_joe_teleportglasses_in_left)
{
    sprite_index = spr_joe_standglasses_left;
    image_speed = 0.1;
    image_index = 0;
    scr_sound_play(snd_music_joe_sunglasses, 0, 1, true);
    audio_sound_gain(snd_music_joe_sunglasses, 0.3, 250);
    alarm[1] = room_speed;
}
else if (sprite_index == spr_joe_teleportglasses_out_left)
{
    audio_sound_gain(snd_music_joe_sunglasses, 0, 250);
    image_speed = 0;
    image_alpha = 0;
    alarm[3] = room_speed;
}
