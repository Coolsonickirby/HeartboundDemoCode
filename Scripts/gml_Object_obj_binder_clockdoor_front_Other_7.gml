if (sprite_index == spr_binder_clockdoor_front_slide_down)
{
    image_index = image_number - 1;
    image_speed = 0;
}

if (sprite_index == spr_binder_clockdoor_front_slide_up)
{
    image_index = image_number - 1;
    image_speed = 0;
    instance_create_depth(x, y, 0, obj_binder_bookhome_fade);
}
