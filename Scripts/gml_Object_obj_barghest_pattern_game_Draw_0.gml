if (display_text == 1)
{
    draw_sprite_ext(sprite_index, image_index, 320, obj_view.y + 40, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    
    if (alarm[0] < 1)
    {
        image_alpha -= ((0.04 * obj_combat_parent.selected_diff) + 0.04);
        
        if (image_alpha <= 0)
        {
            display_text = 0;
            alarm[1] = pattern_start_delay;
        }
    }
}
