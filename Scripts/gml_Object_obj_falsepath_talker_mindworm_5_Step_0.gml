if (global.storyline_array[61] == 0)
{
    if (instance_exists(obj_player_parent))
    {
        if (collision_rectangle(obj_player_parent.collide_left_x, obj_player_parent.collide_top_y, obj_player_parent.collide_right_x, obj_player_parent.collide_bottom_y, id, true, false))
        {
            global.storyline_array[61] = 1;
            activate_dialog();
            global.player_speed_cur = global.player_speed_nrm * 0.5;
            alarm[0] = room_speed;
        }
    }
}
