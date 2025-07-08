if (instance_exists(target_object))
{
    var total_distance = point_distance(x, y, target_object.x, target_object.y) + 7;
    var draw_length = total_distance / base_height;
    image_yscale = -draw_length;
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, base_height, round(x) - (sprite_width * 0.5), round(y), image_xscale, image_yscale, image_blend, image_alpha);
}
