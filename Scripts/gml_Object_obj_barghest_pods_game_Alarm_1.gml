if (attack_completed < attack_number)
{
    if (global.control_type == 0)
        pod_link = instance_create_depth(irandom_range(x - 80, x + 80), obj_view.y - 220, 0, obj_barghest_pods_pod);
    else
        pod_link = instance_create_depth(irandom_range(x - 80, x + 80), obj_view.y - 200, 0, obj_barghest_pods_pod);
    
    pod_link.pod_number = attack_completed;
    pod_link.pod_control = asset_get_index("spr_combat_controls_gamepad_small_" + string(global.controller_type) + "_" + string(attack_array[attack_completed]));
    attack_completed += 1;
    alarm[1] = attack_reset_delay;
}
