if (instance_exists(obj_player_parent))
{
    if (collision_rectangle(obj_player_parent.collide_left_x, obj_player_parent.collide_top_y, obj_player_parent.collide_right_x, obj_player_parent.collide_bottom_y, id, true, false))
    {
        with (obj_player_parent)
            instance_change(obj_barghest2_lore_booktalk, true);
        
        instance_destroy();
    }
}
