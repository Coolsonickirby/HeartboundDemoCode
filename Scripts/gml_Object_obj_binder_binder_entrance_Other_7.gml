if (sprite_index == spr_binder_up_armsdown)
{
    image_speed = 0.05;
    sprite_index = spr_binder_up_stand;
    image_index = image_number - 1;
    alarm[1] = room_speed * 2;
}
