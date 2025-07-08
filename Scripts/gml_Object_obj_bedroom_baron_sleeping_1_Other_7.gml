if (sprite_index == spr_baron_wake)
{
    image_index = image_number - 1;
    image_speed = 0;
    sprite_index = spr_baron_right_walk;
    image_speed = 0.16;
    direction = 360;
    speed = global.player_speed_cur * 2;
    anim_wait = 1;
    activate_dialog();
}
