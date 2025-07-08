draw_sprite_ext(spr_portals_tome_base, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (sprite_index != spr_portals_tome_beam)
{
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
else
{
    var total_distance = point_distance(x, y, target_object.x, target_object.y);
    var draw_length = total_distance / base_height;
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, base_height * draw_length, round(x) - (sprite_width * 0.5), round(y) - 4, image_xscale, image_yscale, image_blend, image_alpha);
}
