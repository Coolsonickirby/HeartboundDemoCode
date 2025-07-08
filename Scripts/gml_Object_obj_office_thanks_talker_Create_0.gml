event_inherited();
text_timer = room_speed;
text_timer_type = 2;
talk_distance = 0;
text_location = 5;
cur_message = 1;
text_border = 0;
text_skip = 0;
text_fade = 1;

if (instance_exists(obj_view))
{
    with (obj_view)
        follow_player = 1;
}

alarm[0] = room_speed * 2;
alarm[1] = room_speed * 4;
