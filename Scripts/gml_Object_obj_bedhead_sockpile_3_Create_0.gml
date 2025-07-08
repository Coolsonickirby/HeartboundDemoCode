event_inherited();
image_speed = 0;
image_selected = global.storyline_array[335] - 1;
image_selected = clamp(image_selected, 0, image_number - 1);
image_index = image_selected;

if (global.storyline_array[335] == 0)
    instance_destroy();
