if (collision_rectangle(other.collide_left_x, other.collide_top_y, other.collide_right_x, other.collide_bottom_y, id, true, false))
{
    if (snd_file != 0)
    {
        if (snd_played == 0)
        {
            snd_played = 1;
            scr_sound_play(snd_file, snd_volume, snd_pitch, false);
        }
    }
    
    if (!instance_exists(obj_fade))
    {
        fader = instance_create_depth(x, y, 0, obj_fade);
        
        with (fader)
        {
            player_x = other.player_x;
            player_y = other.player_y;
            next_room = other.next_room;
            next_color = other.next_color;
            fadein_timer = other.fadein_timer;
            fadeout_timer = other.fadeout_timer;
            fadepause_timer = other.fadepause_timer;
            fadeout_amount = other.fadeout_amount;
            fadein_amount = other.fadein_amount;
            fade_out = true;
            
            if (alarm[1] == -1)
                alarm[1] = room_speed * fadeout_timer;
        }
    }
}
