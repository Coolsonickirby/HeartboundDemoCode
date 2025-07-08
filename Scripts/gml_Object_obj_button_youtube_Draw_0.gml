if (activated)
{
    gpu_set_fog(true, button_color, 0, 0);
    draw_sprite(sprite_index, image_index, x - 2, y);
    draw_sprite(sprite_index, image_index, x + 2, y);
    draw_sprite(sprite_index, image_index, x, y - 2);
    draw_sprite(sprite_index, image_index, x, y + 2);
    gpu_set_fog(false, c_white, 0, 0);
}

draw_self();
