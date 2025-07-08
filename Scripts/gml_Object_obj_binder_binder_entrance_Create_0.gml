event_inherited();
collision_mask = spr_binder_mask;
anim_step = 0;
text_location = 0;
talk_distance = 0;
cur_message = 1;
alarm[0] = room_speed * 2;

if (global.storyline_array[40] != 0)
    instance_destroy();
