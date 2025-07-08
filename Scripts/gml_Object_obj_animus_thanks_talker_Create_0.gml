event_inherited();
audio_sound_gain(snd_music_animus_morning, 0, 1000);
audio_sound_gain(snd_music_animus_day, 0, 1000);
audio_sound_gain(snd_music_animus_evening, 0, 1000);
audio_sound_gain(snd_music_animus_night, 0, 1000);
text_timer = room_speed;
text_timer_type = 2;
talk_distance = 0;
text_location = 5;
cur_message = 1;
text_border = 0;
text_skip = 0;
text_fade = 1;

if (instance_exists(obj_view))
{
    with (obj_view)
        follow_player = 1;
}

alarm[0] = room_speed * 2;
alarm[1] = room_speed * 4;

if (instance_exists(obj_player_parent))
{
    with (obj_player_parent)
        instance_destroy();
}
