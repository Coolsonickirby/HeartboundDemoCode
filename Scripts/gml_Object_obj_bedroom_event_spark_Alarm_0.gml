global.player_frozen = 0;

if (instance_exists(obj_bedroom_baron_sleeping_1))
{
    global.storyline_array[6] = 1;
    
    with (obj_bedroom_baron_sleeping_1)
    {
        sprite_index = spr_baron_wake;
        image_speed = 0.2;
        image_index = 0;
    }
}
