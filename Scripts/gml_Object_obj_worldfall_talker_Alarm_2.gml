if (instance_exists(obj_worldfall_particles))
{
    with (obj_worldfall_particles)
        alarm[1] = 1;
}

audio_sound_gain(snd_music_falling, 0, 2000);
scr_sound_play(snd_outsidewind, 0, 1, true);
audio_sound_gain(snd_outsidewind, 0.15, 3000);
alarm[0] = room_speed;
