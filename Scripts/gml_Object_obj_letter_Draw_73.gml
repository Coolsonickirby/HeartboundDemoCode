switch (sprite_index)
{
    case spr_blank:
        draw_text_transformed_colour(x, y, string_hash_to_newline(cur_char), image_xscale, image_yscale, image_angle, image_blend, image_blend, image_blend, image_blend, image_alpha);
        break;
    
    default:
        image_index = round(image_index);
        draw_self();
        break;
}
