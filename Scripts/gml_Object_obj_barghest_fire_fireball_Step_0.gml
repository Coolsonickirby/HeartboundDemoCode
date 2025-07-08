if (y > (obj_lore_combat.y - 20))
{
    speed = 0;
    hit_target = 1;
    image_index = 0;
    y = obj_lore_combat.y - 20;
    sprite_index = spr_barghest_fire_fireball_explosion;
    obj_barghest_fire_game.alarm[2] = room_speed;
    scr_screenshake(4, 0.5, 0);
    scr_sound_play(snd_barghest_fire_explode, 0.5, 1, false);
    scr_damage_target(3, obj_combat_player_health_parent, x, y);
}

if (hit_target == 0)
{
    if (direction == 270)
    {
        if (place_meeting(x, y, obj_barghest_fire_stick))
        {
            obj_barghest_fire_game.attack_bounce += 1;
            image_yscale *= -1;
            direction = 90;
            base_speed += 1;
            speed = clamp(base_speed, 3, 7);
            scr_sound_play(snd_barghest_fire_bounce, 0.6, random_range(1.2, 1.4) + (base_speed * 0.1), false);
        }
    }
    else if (direction == 90)
    {
        if (y < (obj_view.y - 35))
        {
            if (obj_barghest_fire_game.attack_bounce < obj_barghest_fire_game.attack_number)
            {
                image_yscale *= -1;
                direction = 270;
                scr_sound_play(snd_barghest_fire_bounce, 0.6, random_range(0.95, 1.05) + (base_speed * 0.1), false);
            }
            else
            {
                speed = 0;
                hit_target = 2;
                image_index = 0;
                y = obj_view.y - 35;
                sprite_index = spr_barghest_fire_fireball_explosion;
                obj_barghest_fire_game.alarm[2] = room_speed;
                scr_sound_play(snd_barghest_fire_explode, 0.5, 1, false);
                var damage_index = irandom_range(1, 3);
                var damage_sound = asset_get_index("snd_enemy_hurt_" + string(damage_index));
                scr_sound_play(damage_sound, 0.4, random_range(0.95, 1.05), false);
                
                switch (obj_barghest_fire_game.weapon_type)
                {
                    case "stick":
                        scr_damage_target(5, obj_combat_enemy_health_parent, x, y);
                        break;
                    
                    case "axe":
                        scr_damage_target(10, obj_combat_enemy_health_parent, x, y);
                        break;
                }
            }
        }
    }
}
