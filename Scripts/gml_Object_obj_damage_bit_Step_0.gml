if (target_locked == 0)
{
    speed -= 0.1;
    
    if (speed <= 0)
        target_locked = 1;
}
else
{
    direction = point_direction(x, y, damage_target.x, damage_target.y);
    speed = 8;
}
