if (instance_exists(obj_player_parent))
{
    if (collision_rectangle(obj_player_parent.collide_left_x, obj_player_parent.collide_top_y, obj_player_parent.collide_right_x, obj_player_parent.collide_bottom_y, id, true, false))
    {
        if (instance_exists(obj_baron_follower))
        {
            with (obj_baron_follower)
            {
                swap_type = 3;
                alarm[1] = 1;
            }
            
            instance_destroy();
        }
    }
}
