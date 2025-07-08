if (credits_index != credits_length)
{
    with (instance_create_depth(draw_x, draw_y, 0, obj_credits_text))
        text_display = "⏵ " + other.credits_array[other.credits_index] + " ⏴";
    
    credits_index += 1;
}
else if (!instance_exists(obj_credits_text))
{
    alarm[2] = room_speed;
}
else
{
    alarm[0] = 5;
}
