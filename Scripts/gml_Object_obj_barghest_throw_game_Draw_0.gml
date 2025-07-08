if (display_text == 1)
{
    draw_sprite_ext(sprite_index, image_index, 320, obj_view.y + 40, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    
    if (global.control_type == 1)
    {
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text_ext_transformed_colour(320, ((obj_view.y + 40) - global.font_offset) + global.glyph_offset + floor(image_index), button_text, 0, sprite_width, 1, 1, image_angle, 0, 0, 0, 0, image_alpha);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
    }
    
    if (alarm[3] < 1)
    {
        image_alpha -= ((0.04 * obj_combat_parent.selected_diff) + 0.04);
        
        if (image_alpha <= 0)
        {
            display_text = 0;
            obj_barghest_throw_slidebar.target_active = 1;
        }
    }
}
