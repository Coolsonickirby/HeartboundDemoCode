if (global.debug_version == 1)
{
    draw_text_ext_transformed_colour(60, 10, string(global.last_key) + " Keyboard", 0, room_width, image_xscale, image_yscale, image_angle, 16777215, 16777215, 16777215, 16777215, image_alpha);
    draw_text_ext_transformed_colour(70, 30, string(global.last_controller) + " Controller", 0, room_width, image_xscale, image_yscale, image_angle, 16777215, 16777215, 16777215, 16777215, image_alpha);
}
