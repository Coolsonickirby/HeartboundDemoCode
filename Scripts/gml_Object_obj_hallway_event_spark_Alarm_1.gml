effect_xmin = x - 2;
effect_xmax = x + 2;
effect_ymin = y;
effect_ymax = y;
part_emitter_region(particle_system, particle_emitter, effect_xmin, effect_xmax, effect_ymin, effect_ymax, 3, 0);
part_emitter_burst(particle_system, particle_emitter, effect_drop, 10);
scr_sound_play(snd_home_sparks, 0.25, 1, false);
global.storyline_array[29] = 1;

if (instance_exists(obj_hallway_event_roomglow))
{
    with (obj_hallway_event_roomglow)
        instance_destroy();
}

global.storyline_array[8] = 0;

if (!instance_exists(obj_roomdark_parent))
{
    with (instance_create_depth(x, y, 0, obj_home_roomdark))
        object_color = 13473693;
}

scr_screenshake(2, 0.5, 1);
