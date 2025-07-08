depth = -y;
draw_self();

if (instance_exists(obj_booktrial3_laser_1a) || instance_exists(obj_booktrial3_laser_4b))
{
    push_horizontal_flag = 0;
    
    if (instance_exists(obj_booktrial3_laser_1a))
    {
        if (laser_cast == 0)
            draw_sprite(impact_sprite_1, image_index, round(x), round(y));
        else
            draw_sprite(impact_sprite_2, image_index, round(x), round(y));
    }
    
    if (instance_exists(obj_booktrial3_laser_4b))
        draw_sprite(impact_sprite_3, image_index, round(x), round(y));
}
else
{
    push_horizontal_flag = 1;
}
