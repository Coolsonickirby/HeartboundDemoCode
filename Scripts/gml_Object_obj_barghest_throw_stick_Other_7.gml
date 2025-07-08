image_index = image_number - 1;
image_speed = 0;
speed = 0;

if (sprite_index == sprite_throw)
{
    if (instance_exists(obj_barghest_combat_parent))
        obj_barghest_combat_parent.move_lock = 1;
    
    switch (obj_barghest_throw_game.weapon_type)
    {
        case "stick":
            scr_damage_target(5, obj_combat_enemy_health_parent, x, y);
            break;
        
        case "axe":
            scr_damage_target(10, obj_combat_enemy_health_parent, x, y);
            break;
    }
    
    scr_screenshake(2, 0.5, 1);
    audio_store[1] = audio_sound_get_gain(snd_music_shadows_bitter);
    audio_sound_gain(snd_music_shadows_bitter, audio_store[1] * 0.5, 0);
    var damage_index = irandom_range(1, 3);
    var damage_sound = asset_get_index("snd_enemy_hurt_" + string(damage_index));
    scr_sound_play(damage_sound, 0.3, random_range(0.95, 1.05), false);
    audio_sound_gain(snd_music_shadows_bitter, audio_store[1], 250);
    
    with (obj_game_parent)
        alarm[2] = room_speed * 0.5;
}
