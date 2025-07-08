if (instance_exists(obj_view))
    obj_view.follow_player = 1;

audio_stop_sound(music_layer[0]);
audio_stop_sound(music_layer[1]);
audio_stop_sound(snd_barghest_dodge_blast);
ds_list_destroy(game_list);
instance_destroy();
