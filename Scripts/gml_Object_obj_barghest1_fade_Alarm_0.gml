if (fade_out == false)
{
    if (alpha > 0)
    {
        alpha -= fadein_amount;
        alarm[0] = room_speed * fadein_timer;
    }
    else
    {
        alpha = 0;
        audio_stop_sound(snd_barghest_dodge_blast);
        instance_destroy();
    }
}
