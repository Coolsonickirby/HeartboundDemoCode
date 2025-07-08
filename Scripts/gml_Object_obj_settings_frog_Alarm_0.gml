random_side = irandom_range(1, 4);

switch (random_side)
{
    case 1:
        random_x_start = -50;
        random_y_start = irandom_range(0, move_height);
        random_x_tar = move_width + 50;
        random_y_tar = irandom_range(30, move_height - 30);
        break;
    
    case 2:
        random_x_start = move_width + 50;
        random_y_start = irandom_range(0, move_height);
        random_x_tar = -50;
        random_y_tar = irandom_range(30, move_height - 30);
        break;
    
    case 3:
        random_x_start = irandom_range(0, move_width);
        random_y_start = -50;
        random_x_tar = irandom_range(30, move_width - 30);
        random_y_tar = move_height + 50;
        break;
    
    case 4:
        random_x_start = irandom_range(0, move_width);
        random_y_start = move_height + 50;
        random_x_tar = irandom_range(30, move_width - 30);
        random_y_tar = -50;
        break;
}

random_rot = random_range(2, 4);
random_rot_dir = choose(-1, 1);
path_handle = path_add();
path_set_closed(path_handle, false);
path_set_precision(path_handle, 4);
path_set_kind(path_handle, 1);
path_add_point(path_handle, random_x_start, random_y_start, 100);
path_add_point(path_handle, random_x_tar, random_y_tar, 100);
path_start(path_handle, random_range(2, 4), path_action_stop, true);
