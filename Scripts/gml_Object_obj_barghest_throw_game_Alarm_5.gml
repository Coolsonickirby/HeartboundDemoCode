with (obj_barghest_combat_parent)
{
    color_target = 16777215;
    move_lock = 0;
    
    if (enemy_section == 2)
    {
        enemy_attacking = 0;
        sprite_index = asset_get_index("spr_barghest_enemy_" + string(enemy_section));
        image_speed = 0.2;
        audio_stop_sound(snd_barghest_dodge_blast);
        move_lock = 0;
    }
}

obj_combat_parent.activate_game = 1;
instance_destroy();
