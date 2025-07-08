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
        if (instance_exists(obj_player_parent))
        {
            with (obj_player_parent)
                instance_destroy();
        }
        
        room_goto(next_room);
    }
}
