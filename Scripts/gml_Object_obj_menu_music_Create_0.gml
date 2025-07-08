music_intro = snd_music_menu_intro;
music_main = snd_music_menu_loop;
scr_sound_play(music_intro, 0, 1, false);
audio_sound_gain(music_intro, 0.6, 1000);
alarm[0] = (room_speed * audio_sound_length(music_intro)) - 10;
audio_stop_sound(snd_music_credits);
