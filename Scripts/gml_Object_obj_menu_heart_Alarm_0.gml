if (button_merge < 1)
{
    alarm[0] = 1;
    button_merge = clamp(button_merge + 0.04, 0, 1);
    image_blend = merge_color(c_white, button_color, button_merge);
}
