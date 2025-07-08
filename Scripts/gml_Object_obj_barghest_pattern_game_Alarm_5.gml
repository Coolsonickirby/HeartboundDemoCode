var time_total = room_speed * 10;
var time_pitch = time_total / alarm[4];
time_pitch = clamp(time_pitch, 0.5, 4.5);

if (alarm[4] != 0)
{
    scr_sound_play(snd_barghest_pattern_timer, 0.2, time_pitch, false);
    var time_repeat = (alarm[4] / time_total) * room_speed;
    time_repeat = clamp(time_repeat, room_speed * 0.1, room_speed);
    alarm[5] = time_repeat;
}
