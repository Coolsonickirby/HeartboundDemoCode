if (fade_out == true)
{
    global.player_frozen = 1;
    
    if (alpha < 1)
    {
        alpha += fadeout_amount;
        alarm[1] = room_speed * fadeout_timer;
    }
    else
    {
        alarm[2] = room_speed * fadepause_timer;
    }
}
