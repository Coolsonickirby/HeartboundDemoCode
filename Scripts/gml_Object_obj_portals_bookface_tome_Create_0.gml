target_portal = 0;
depth = -5004;
image_speed = 0.3;

if (instance_exists(obj_portals_lore))
{
    direction = point_direction(x, y, obj_portals_lore.x, obj_portals_lore.y);
    speed = 5;
}
