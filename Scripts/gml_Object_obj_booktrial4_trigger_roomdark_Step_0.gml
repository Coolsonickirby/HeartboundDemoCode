if (instance_exists(obj_player_parent))
    player_position = obj_player_parent.collide_top_y;

if (instance_exists(obj_booktrial4_roomdark))
{
    dark_value = (clamp_bottom - player_position) / clamp_range;
    dark_value = clamp(dark_value, 0, 1);
    obj_booktrial4_roomdark.room_fade = dark_value;
}
