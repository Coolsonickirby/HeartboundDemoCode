switch (sprite_index)
{
    case spr_blank:
        alarm[4] = 1;
        break;
    
    default:
        image_speed = 1;
        break;
}

alarm[1] = room_speed * random_range(0.15, 0.3);
