if (room == binder_bookhome)
{
    spinning_counter += 1;
    
    if (spinning_counter == spinning_required)
    {
        spinning_counter = 1;
        spinning_direction += 1;
        
        if (spinning_direction == 5)
        {
            spinning_direction = 1;
            spinning_required -= 2;
            spinning_required = clamp(spinning_required, 4, 10);
        }
        
        with (obj_binder_lore_exit)
        {
            switch (other.spinning_direction)
            {
                case 1:
                    sprite_index = global.clothing_array[5];
                    break;
                
                case 2:
                    sprite_index = global.clothing_array[6];
                    break;
                
                case 3:
                    sprite_index = global.clothing_array[7];
                    break;
                
                case 4:
                    sprite_index = global.clothing_array[4];
                    break;
            }
        }
    }
}
