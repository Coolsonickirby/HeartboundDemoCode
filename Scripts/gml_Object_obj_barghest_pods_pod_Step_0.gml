if (global.control_type == 0)
{
    if (global.accept_key)
    {
        if (object_selected == 1)
        {
            if (instance_exists(obj_barghest_pods_game))
            {
                with (obj_barghest_pods_game)
                {
                    attack_defeated += 1;
                    
                    if (attack_defeated == attack_number)
                        alarm[2] = room_speed * 0.5;
                }
            }
            
            if (global.storyline_array[23] == 1)
                scr_damage_target(2, obj_combat_enemy_health_parent, other.x, other.y);
            else
                scr_damage_target(1, obj_combat_enemy_health_parent, other.x, other.y);
            
            scr_sound_play(snd_global_impact, 0.3, random_range(0.95, 1), false);
            var death_object = instance_create_depth(x, y, 0, obj_barghest_pods_pod_explosion);
            death_object.image_angle = image_angle;
            instance_destroy();
        }
    }
}

if (y > (obj_view.y + 150))
{
    scr_damage_target(1, obj_combat_player_health_parent, x, y);
    scr_screenshake(4, 0.5, 2);
    scr_sound_play(snd_global_impact, 0.3, random_range(0.95, 1), false);
    var death_object = instance_create_depth(x, y, 0, obj_barghest_pods_pod_explosion);
    death_object.image_angle = image_angle;
    
    if (pod_state == 0)
    {
        if (instance_exists(obj_barghest_pods_game))
        {
            with (obj_barghest_pods_game)
            {
                attack_defeated += 1;
                
                if (attack_defeated == attack_number)
                    alarm[2] = room_speed * 0.5;
            }
        }
    }
    
    instance_destroy();
}
