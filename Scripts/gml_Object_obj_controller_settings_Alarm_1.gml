if (size_cur < size_max)
{
    size_cur += size_step;
    alarm[1] = 1;
}
else
{
    size_cur = size_max;
    global.menu_active = 1;
    global.current_menu = 1;
}
