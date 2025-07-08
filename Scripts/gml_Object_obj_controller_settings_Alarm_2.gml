if (size_cur > 0)
{
    size_cur -= size_step;
    
    if (size_cur < 0)
        size_cur = 0;
    
    alarm[2] = 1;
}
else
{
    save_options();
    global.current_menu = menu_last_index;
    global.menu_active = menu_last_active;
    
    with (obj_controller_buttons)
        selected_button = other.menu_last_selected;
    
    global.player_frozen = menu_last_frozen;
    instance_activate_all();
    instance_destroy();
}
