if (instance_exists(target_object))
{
    depth = target_object.depth + 3;
    var total_distance = point_distance(x, y, target_object.x, y);
    var draw_length = total_distance / base_length;
    image_xscale = -draw_length;
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, base_length, sprite_height, round(x), round(y) - (sprite_height * 0.5), image_xscale, image_yscale, image_blend, image_alpha);
}
