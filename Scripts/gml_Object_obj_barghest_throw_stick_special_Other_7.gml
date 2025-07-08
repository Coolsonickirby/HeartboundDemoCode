image_index = image_number - 1;
image_speed = 0;
speed = 0;

if (sprite_index == sprite_throw)
{
    if (instance_exists(obj_barghest_combat_parent))
        obj_barghest_combat_parent.move_lock = 1;
    
    scr_screenshake(2, 3, 1);
    var damage_index = irandom_range(1, 3);
    var damage_sound = asset_get_index("snd_enemy_hurt_" + string(damage_index));
    scr_sound_play(damage_sound, 0.6, 0.25, false);
    audio_sound_gain(snd_music_shadows_bitter, 0, 1000);
    
    with (obj_game_parent)
        alarm[4] = room_speed * 0.5;
}
