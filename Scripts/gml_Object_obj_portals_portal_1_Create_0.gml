depth = -4999;
activated = 0;
portal_selected = 1;
sound_file = snd_music_portal_tower;

if (global.storyline_array[120] == 2 || global.storyline_array[121] == 2)
{
    instance_destroy();
}
else
{
    instance_create_depth(x, y, 0, obj_portals_portal_1a);
    instance_create_depth(x + 15, y + 1, 0, obj_portals_portal_1b);
}
