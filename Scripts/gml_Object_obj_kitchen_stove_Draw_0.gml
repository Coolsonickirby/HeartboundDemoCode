if (instance_exists(obj_roomdark_parent))
{
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    
    if (global.storyline_array[25] == 0)
    {
        if (global.storyline_array[19] == 1)
        {
            gpu_set_blendmode_ext(9, bm_one);
            draw_sprite_ext(glow_name, 0, round(x), round(y), image_xscale, image_yscale, image_angle, #D1AB44, image_alpha);
            gpu_set_blendmode(bm_normal);
        }
    }
}
else
{
    draw_sprite_ext(shadow_name, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    
    if (global.storyline_array[25] == 0)
    {
        if (global.storyline_array[19] == 1)
        {
            gpu_set_blendmode_ext(9, bm_one);
            draw_sprite_ext(glow_name, 0, round(x), round(y), image_xscale, image_yscale, image_angle, #D1AB44, image_alpha);
            gpu_set_blendmode(bm_normal);
        }
    }
}
