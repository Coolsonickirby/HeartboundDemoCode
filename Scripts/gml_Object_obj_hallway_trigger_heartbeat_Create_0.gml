event_inherited();
story_index = 28;
snd_index = snd_lore_heartbeat;
snd_gain = 0.5;
snd_volume = 0;

if (global.storyline_array[25] != 1)
{
    instance_destroy();
}
else if (global.storyline_array[story_index] == 1)
{
    if (audio_is_playing(snd_index))
        audio_sound_gain(snd_index, 0, 1000);
    else
        instance_destroy();
}
