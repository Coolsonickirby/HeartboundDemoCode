draw_self();

if (global.storyline_array[25] == 0)
    activated = global.storyline_array[story_index];
else
    activated = 0;

if (activated == 1)
{
    if (instance_exists(obj_roomdark_parent))
    {
        gpu_set_blendmode_ext(9, bm_one);
        effect_blend = 4500433;
        draw_sprite_ext(sprite_index, 1, round(x), round(y), image_xscale, image_yscale, image_angle, effect_blend, image_alpha);
    }
    else
    {
        gpu_set_blendmode_ext(9, bm_one);
        effect_blend = 4500433;
        draw_sprite_ext(sprite_index, 2, round(x), round(y), image_xscale, image_yscale, image_angle, effect_blend, image_alpha);
    }
}
else
{
    gpu_set_blendmode_ext(9, bm_zero);
    effect_blend = 13473693;
    draw_sprite_ext(sprite_index, 3, round(x), round(y), image_xscale, image_yscale, image_angle, effect_blend, image_alpha);
}

gpu_set_blendmode(bm_normal);
