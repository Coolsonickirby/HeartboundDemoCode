switch (sprite_index)
{
    case spr_blank:
        cur_char = alt_char;
        alarm[4] = 0;
        break;
    
    default:
        image_index = alt_key;
        image_speed = 0;
        
        if (translate_message == 1)
            sprite_index = spr_font_pixel;
        
        break;
}
