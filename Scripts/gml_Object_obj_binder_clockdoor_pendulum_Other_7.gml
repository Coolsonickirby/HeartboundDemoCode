if (anim_next == 1)
{
    if (sprite_index == spr_binder_clockdoor_pendulum)
    {
        sprite_index = spr_binder_clockdoor_pendulum_slide;
        
        with (obj_binder_clockdoor_front)
            sprite_index = spr_binder_clockdoor_front_slide_down;
    }
    else if (sprite_index == spr_binder_clockdoor_pendulum_slide)
    {
        image_index = image_number - 1;
    }
}
