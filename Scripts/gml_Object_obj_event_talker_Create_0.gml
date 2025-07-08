event_inherited();
text_location = 6;
talk_distance = 0;
cur_message = 1;
text_border = 0;
text_skip = 0;
text_fade = 1;
alarm[0] = room_speed;

if (instance_exists(obj_view))
{
    with (obj_view)
    {
        follow_object = obj_player_parent;
        follow_player = 1;
    }
}
