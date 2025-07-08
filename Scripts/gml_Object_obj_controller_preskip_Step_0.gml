if (room == menu_logo)
{
    if (global.any_key || global.any_mouse || global.any_controller)
    {
        if (!instance_exists(obj_fade_menu))
        {
            with (instance_create_depth(x, y, 0, obj_fade_menu))
            {
                next_room = menu_language;
                next_color = 0;
                fadein_timer = 0.02;
                fadeout_timer = 0.02;
                fadepause_timer = 0.02;
                fadeout_amount = 0.05;
                fadein_amount = 0.05;
                fade_out = true;
                alarm[1] = room_speed * fadeout_timer;
            }
        }
    }
}
else
{
    instance_destroy();
}
