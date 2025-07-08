if (global.combat_active == 1)
{
    if (!instance_exists(obj_barghest2_arena))
    {
        instance_create_depth(obj_view.x, obj_view.y, 0, obj_barghest2_arena);
        instance_create_depth(obj_view.x, obj_view.y, 0, obj_barghest_arena_back);
        instance_create_depth(76, obj_view.y + 252, 0, obj_combat_healthbar_lore);
        instance_create_depth(564, obj_view.y + 252, 0, obj_combat_healthbar_barghest);
    }
}

if (global.player_hp_check <= 0)
{
    if (death_trigger == 0)
    {
        death_trigger = 1;
        scr_sound_play(snd_combat_death, 0.4, 1, false);
        audio_sound_gain(music_layer[0], 0, 500);
        audio_sound_gain(music_layer[1], 0, 500);
        
        if (instance_exists(obj_game_parent))
            obj_game_parent.alarm[11] = 1;
        
        if (instance_exists(obj_combat_weapon_parent))
        {
            with (obj_combat_weapon_parent)
                instance_destroy();
        }
        
        if (instance_exists(obj_barghest2_talker))
        {
            with (obj_barghest2_talker)
            {
                dialog_step = 5;
                
                switch (global.storyline_array[78])
                {
                    case 0:
                        next_step = 1;
                        cur_message = 23;
                        text_location = 4;
                        text_flipped = 0;
                        break;
                    
                    default:
                        next_step = 2;
                        cur_message = 25;
                        text_location = 4;
                        text_flipped = 0;
                        break;
                }
                
                alarm[0] = room_speed * 3;
            }
        }
        
        global.storyline_array[78] += 1;
        global.storyline_array[386] = 2;
    }
}
else if (global.enemy_hp_check <= 0)
{
    if (death_trigger == 0)
    {
        death_trigger = 1;
        
        if (instance_exists(obj_game_parent))
        {
            with (obj_game_parent)
                alarm[11] = 1;
        }
        
        if (instance_exists(obj_combat_weapon_parent))
        {
            with (obj_combat_weapon_parent)
                instance_destroy();
        }
        
        if (instance_exists(obj_barghest2_talker))
        {
            with (obj_barghest2_talker)
            {
                dialog_step = 4;
                cur_message = 20;
                text_location = 4;
                text_flipped = 0;
                alarm[0] = room_speed;
            }
        }
        
        global.storyline_array[386] = 1;
    }
}
else if (!instance_exists(obj_combat_weapon_parent))
{
    if (activate_game == 1)
    {
        activate_game = 0;
        game_index = ds_list_find_value(game_list, game_increment);
        selected_game = game_array[game_index][0];
        selected_diff = game_array[game_index][1];
        game_array[game_index][1] += 1;
        last_game = game_index;
        combat_round += 1;
        game_increment++;
        
        if (game_increment > total_games)
        {
            game_increment = 0;
            ds_list_shuffle(game_list);
            
            while (ds_list_find_value(game_list, game_increment) == last_game)
                ds_list_shuffle(game_list);
        }
        
        switch (dialog_step)
        {
            case 0:
                if (global.enemy_hp_check <= (global.enemy_hp_max * 0.75))
                {
                    dialog_step = 1;
                    
                    if (instance_exists(obj_barghest2_talker))
                    {
                        with (obj_barghest2_talker)
                        {
                            dialog_step = 1;
                            cur_message = 14;
                            text_location = 4;
                            text_flipped = 0;
                            alarm[0] = room_speed;
                        }
                    }
                    
                    exit;
                }
                
                break;
            
            case 1:
                if (global.enemy_hp_check <= (global.enemy_hp_max * 0.5))
                {
                    dialog_step = 2;
                    
                    if (instance_exists(obj_barghest2_talker))
                    {
                        with (obj_barghest2_talker)
                        {
                            dialog_step = 2;
                            cur_message = 16;
                            text_location = 4;
                            text_flipped = 0;
                            alarm[0] = room_speed;
                        }
                    }
                    
                    exit;
                }
                
                break;
            
            case 2:
                if (global.enemy_hp_check <= (global.enemy_hp_max * 0.25))
                {
                    dialog_step = 3;
                    
                    if (instance_exists(obj_barghest2_talker))
                    {
                        with (obj_barghest2_talker)
                        {
                            dialog_step = 3;
                            cur_message = 18;
                            text_location = 4;
                            text_flipped = 0;
                            alarm[0] = room_speed;
                        }
                    }
                    
                    exit;
                }
                
                break;
        }
        
        alarm[1] = room_speed * 0.5;
    }
}
