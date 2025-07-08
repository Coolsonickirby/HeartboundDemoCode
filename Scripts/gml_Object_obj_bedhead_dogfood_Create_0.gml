depth = -167;
image_speed = 0;
image_select = global.storyline_array[21] - 1;
image_index = clamp(image_select, 0, 1);

if (global.storyline_array[21] == 0)
    instance_destroy();
