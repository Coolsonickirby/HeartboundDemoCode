scr_sound_play(snd_darkworld_lampshatter_2, 0.5, 1, false);
instance_create_depth(x, y, 0, obj_falsepath_sparks);

if (instance_exists(obj_falsepath_controller))
    obj_falsepath_controller.events_completed += 1;
