if (instance_exists(obj_player_parent))
{
    with (obj_player_parent)
    {
        x = other.player_x;
        y = other.player_y;
        mask_index = spr_lore_mask;
        collide_left_x = round(bbox_left);
        collide_top_y = round(bbox_top);
        collide_right_x = round(bbox_right);
        collide_bottom_y = round(bbox_bottom);
    }
}
