function scr_sound_play(arg0, arg1, arg2, arg3)
{
    var snd_playfile = arg0;
    var snd_playvolume = arg1;
    var snd_playpitch = arg2;
    var snd_playloop = arg3;
    var sound_index = audio_play_sound(snd_playfile, 0, snd_playloop);
    audio_sound_gain(snd_playfile, snd_playvolume, 0);
    audio_sound_pitch(snd_playfile, snd_playpitch);
    return sound_index;
}
