game_ended = 1;

with (obj_barghest_combat_parent)
    color_target = 16777215;

if (instance_exists(obj_barghest_pods_pod))
{
    scr_sound_play(snd_global_impact, 0.3, random_range(0.95, 1), false);
    
    with (obj_barghest_pods_pod)
    {
        var death_object = instance_create_depth(x, y, 0, obj_barghest_pods_pod_explosion);
        death_object.image_angle = image_angle;
        instance_destroy();
    }
}

scr_handle_mouse(false, false);
instance_destroy();
