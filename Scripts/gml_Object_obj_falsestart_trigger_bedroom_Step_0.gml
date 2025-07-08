if (instance_exists(obj_player_parent))
{
    if (collision_rectangle(obj_player_parent.collide_left_x, obj_player_parent.collide_top_y, obj_player_parent.collide_right_x, obj_player_parent.collide_bottom_y, id, true, false))
    {
        with (obj_player_parent)
        {
            switch (global.player_clothing)
            {
                case "pajama":
                    scr_clothing_change(2);
                    break;
                
                case "sweater":
                    scr_clothing_change(3);
                    break;
            }
        }
        
        global.storyline_array[72] = 1;
        scr_sound_play(snd_darkworld_shatter, 0.3, random_range(0.8, 1), false);
        room_goto(darkworld_falsepath);
    }
}
