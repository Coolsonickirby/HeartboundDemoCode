event_inherited();
depth = -6000;
image_speed = random_range(0.18, 0.22);
angle_modifier = choose(-3, -2, 2, 3);

if (global.storyline_array[19] == 0)
    target_portal = obj_portals_portal_3_2a;
else
    target_portal = obj_portals_portal_3_1a;

alarm[0] = room_speed * 5;
