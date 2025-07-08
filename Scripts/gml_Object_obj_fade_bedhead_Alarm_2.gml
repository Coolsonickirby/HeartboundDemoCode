room_goto(next_room);

if (instance_exists(obj_global_pocketwatch))
{
    with (obj_global_pocketwatch)
    {
        switch (global.storyline_array[277])
        {
            case 1:
                alarm[3] = 1;
                break;
            
            default:
                break;
        }
    }
}
