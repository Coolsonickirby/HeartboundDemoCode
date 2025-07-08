if (global.storyline_array[35] == 0)
{
    if (instance_exists(obj_player_parent))
    {
        if (collision_rectangle(obj_player_parent.collide_left_x, obj_player_parent.collide_top_y, obj_player_parent.collide_right_x, obj_player_parent.collide_bottom_y, id, true, false))
        {
            global.storyline_array[35] = 1;
            audio_store[1] = audio_sound_get_gain(snd_rain);
            audio_store[2] = audio_sound_get_gain(snd_insidewind);
            audio_store[3] = audio_sound_get_gain(snd_outsidewind);
            audio_store[4] = audio_sound_get_gain(snd_stormrain);
            audio_store[5] = audio_sound_get_gain(snd_music_shadows_sonata);
            audio_sound_gain(snd_rain, 0, 100);
            audio_sound_gain(snd_insidewind, 0, 100);
            audio_sound_gain(snd_outsidewind, 0, 100);
            audio_sound_gain(snd_stormrain, 0, 100);
            audio_sound_gain(snd_music_shadows_sonata, audio_store[5] * 0.3, 100);
            global.player_speed_cur = global.player_speed_nrm * 0.5;
            alarm[0] = room_speed;
            scr_sound_play(snd_index, snd_volume, random_range(0.95, 1), false);
        }
    }
}
