event_inherited();
depth = 1000004;
image_speed = 0.2;
random_rot = random_range(1, 3);
random_rot_dir = choose(-1, 1);
random_x_start = 0;
random_y_start = 0;
random_x_tar = 0;
random_y_tar = 0;

if (global.storyline_array[371] != 1)
    instance_destroy();

alarm[0] = room_speed * 0.5;
