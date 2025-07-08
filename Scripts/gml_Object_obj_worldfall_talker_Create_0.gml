event_inherited();
talk_distance = 10;
dialog_step = 1;
cur_message = 1;
text_skip = 0;
text_fade = 1;
text_border = 0;
text_location = 2;
base_index = 1;
particle_shift = 0;

switch (global.storyline_array[327])
{
    case 0:
        switch (global.storyline_array[71])
        {
            case 1:
                base_index = 5;
                break;
            
            case 2:
                base_index = 1;
                break;
        }
        
        cur_message = base_index;
        alarm[0] = room_speed * 5;
        break;
    
    default:
        switch (global.storyline_array[(120 + global.storyline_array[327]) - 1])
        {
            case 2:
                switch (global.storyline_array[(348 + global.storyline_array[327]) - 1])
                {
                    case 1:
                        dialog_step = 3;
                        cur_message = 33;
                        break;
                    
                    case 2:
                        dialog_step = 4;
                        cur_message = 18;
                        break;
                }
                
                break;
            
            case 3:
                dialog_step = 4;
                break;
            
            case 4:
                dialog_step = 5;
                break;
            
            case 5:
                dialog_step = 6;
                break;
        }
        
        if (instance_exists(obj_worldfall_artifact))
        {
            with (obj_worldfall_artifact)
                alarm[0] = room_speed * 3;
        }
        
        break;
}

alarm[1] = room_speed * 3;
