depth = -4999;
activated = 0;
portal_selected = 2;
sound_file = snd_music_portal_animus;

if (global.storyline_array[120] == 3 || global.storyline_array[121] == 3)
{
    instance_destroy();
}
else
{
    instance_create_depth(x, y + 34, 0, obj_portals_portal_2a);
    instance_create_depth(x - 15, y - 27, 0, obj_portals_portal_2b);
    instance_create_depth(x - 5, y - 3, 0, obj_portals_portal_2c);
}
