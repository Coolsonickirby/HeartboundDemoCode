var pick_spin = irandom(1);

switch (pick_spin)
{
    case 0:
        rotation_mod = -2;
        target_x = random_range(0, 250);
        break;
    
    case 1:
        rotation_mod = 2;
        target_x = random_range(390, 640);
        break;
}

path_set_closed(path_handle, false);
path_set_precision(path_handle, 4);
path_set_kind(path_handle, 1);
path_add_point(path_handle, x, y, 100);
path_add_point(path_handle, target_x, 180, 100);
path_add_point(path_handle, target_x, 500, 100);
alarm[2] = 1;
path_start(path_handle, 1, path_action_stop, true);
path_speed = 15;
