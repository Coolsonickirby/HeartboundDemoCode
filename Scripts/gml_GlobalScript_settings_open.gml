function settings_open(arg0, arg1)
{
    var settings_open_x = arg0;
    var settings_open_y = arg1;
    instance_create_depth(settings_open_x, settings_open_y, -20000, obj_controller_settings);
}
