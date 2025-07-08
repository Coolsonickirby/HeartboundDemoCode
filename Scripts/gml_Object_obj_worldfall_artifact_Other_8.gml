if (instance_exists(obj_worldfall_talker))
{
    with (obj_worldfall_talker)
        alarm[11] = room_speed;
}

audio_stop_sound(snd_outsidewind);
path_delete(path_handle);
instance_destroy();
