depth = 1;
image_speed = 0;
image_index = 0;
sprite_index = sprite_norm;
global.player_direction = 3;
instance_create_depth(x - 29, y - 15, 0, obj_lore);

if (instance_exists(obj_falsestart_baron))
{
    with (obj_falsestart_baron)
    {
        sprite_index = spr_baron_wake;
        image_speed = 0.2;
        image_index = 0;
    }
    
    global.player_frozen = 1;
}
