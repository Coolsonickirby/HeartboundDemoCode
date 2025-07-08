if (image_blend != c_white)
{
    color_mod += 5;
    image_blend = make_color_rgb(color_mod, color_mod, color_mod);
}

draw_self();
