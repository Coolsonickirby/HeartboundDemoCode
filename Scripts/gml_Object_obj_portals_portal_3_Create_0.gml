depth = -4999;
activated = 0;
portal_selected = 3;

if (global.storyline_array[19] == 0)
    sound_file = snd_music_portal_frost;
else
    sound_file = snd_music_portal_fire;

if (global.storyline_array[120] == 4 || global.storyline_array[121] == 4 || global.storyline_array[120] == 5 || global.storyline_array[121] == 5)
{
    instance_destroy();
}
else if (global.storyline_array[19] == 0)
{
    instance_create_depth(x, y, 0, obj_portals_portal_3_2a);
    instance_create_depth(x - 17, y + 27, 0, obj_portals_portal_3_2b);
    instance_create_depth(x, y, 0, obj_portals_portal_3_2c);
    instance_create_depth(x, y, 0, obj_portals_portal_3_2c);
}
else
{
    instance_create_depth(x, y, 0, obj_portals_portal_3_1a);
    instance_create_depth(x + 4, y + 22, 0, obj_portals_portal_3_1b);
    instance_create_depth(x, y - 25, 0, obj_portals_portal_3_1c);
}
