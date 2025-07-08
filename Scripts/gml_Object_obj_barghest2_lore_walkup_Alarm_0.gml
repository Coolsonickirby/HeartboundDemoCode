if (instance_exists(obj_view))
{
    obj_view.follow_player = 0;
    
    if (obj_view.y > 270)
    {
        obj_view.y -= 1;
        alarm[0] = 1;
    }
    else
    {
        obj_view.y = 270;
        
        if (light_expand == 0)
        {
            if (alarm[1] == -1)
            {
                alarm[1] = room_speed;
                light_expand = 1;
            }
        }
    }
}
