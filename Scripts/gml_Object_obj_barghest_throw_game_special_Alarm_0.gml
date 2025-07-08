if (instance_exists(obj_barghest_combat_parent))
{
    audio_store[1] = audio_sound_get_gain(snd_music_shadows_bitter);
    audio_sound_gain(snd_music_shadows_bitter, audio_store[1] * 0.5, 0);
    scr_sound_play(snd_barghest_dodge_charge, 0.2, random_range(0.95, 1), true);
    audio_sound_gain(snd_music_shadows_bitter, audio_store[1], 500);
    
    with (obj_barghest_combat_parent)
    {
        if (enemy_section == 2)
        {
            enemy_attacking = 1;
            sprite_index = asset_get_index("spr_barghest_enemy_" + string(enemy_section) + "_charge");
            image_speed = 0.3;
        }
    }
}

alarm[1] = room_speed * 0.75;
