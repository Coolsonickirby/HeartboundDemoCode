if (anim_step == 1)
{
    if (x >= 349)
    {
        x = 349;
        anim_step = 2;
        sprite_index = spr_baron_up_walk;
        direction = 90;
    }
}
else if (anim_step == 2)
{
    if (instance_exists(obj_falsestart_trigger_bedroom))
    {
        if (y <= (obj_falsestart_trigger_bedroom.y - 10))
        {
            y = obj_falsestart_trigger_bedroom.y - 10;
            speed = 0;
            anim_step = 3;
        }
    }
}
else if (anim_step == 3)
{
    image_alpha -= 0.02;
    
    if (image_alpha <= 0)
    {
        global.player_frozen = 0;
        instance_destroy();
    }
}
