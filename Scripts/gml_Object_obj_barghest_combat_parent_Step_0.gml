var colliding_weapon = instance_place(round(x), round(y), obj_barghest_dodge_weapon);

if (colliding_weapon != -4)
{
    with (colliding_weapon)
    {
        scr_damage_target(weapon_damage, obj_combat_enemy_health_parent, x, y);
        instance_destroy();
    }
    
    if (instance_exists(obj_combat_parent))
    {
        with (obj_combat_parent)
        {
            audio_store[1] = audio_sound_get_gain(music_layer[1]);
            
            if (global.enemy_hp_check > 0 && global.player_hp_check > 0)
            {
                audio_sound_gain(music_layer[1], audio_store[1] * 0.5, 0);
                audio_sound_gain(music_layer[1], audio_store[1], 250);
            }
            
            var damage_index = irandom_range(1, 3);
            var damage_sound = asset_get_index("snd_enemy_hurt_" + string(damage_index));
            scr_sound_play(damage_sound, 0.2, random_range(0.95, 1.05), false);
        }
    }
}
