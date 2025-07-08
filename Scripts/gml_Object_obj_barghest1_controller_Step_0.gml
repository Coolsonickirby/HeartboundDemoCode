if (global.combat_active == 1)
{
    if (!instance_exists(obj_barghest1_arena))
    {
        instance_create_depth(320, 180, 0, obj_barghest1_arena);
        instance_create_depth(320, 180, 0, obj_barghest_arena_back);
        instance_create_depth(76, 432, 0, obj_combat_healthbar_lore);
        instance_create_depth(564, 432, 0, obj_combat_healthbar_barghest);
    }
}

if (!instance_exists(obj_damage_bit))
{
    if (global.player_hp_check > 0)
    {
        if (activate_game == 1)
        {
            activate_game = 0;
            
            switch (combat_round)
            {
                case 5:
                    dialog_active = 1;
                    dialog_step = 1;
                    cur_message = 9;
                    text_location = 3;
                    text_flipped = 1;
                    alarm[3] = room_speed;
                    break;
                
                case 10:
                    dialog_active = 1;
                    dialog_step = 2;
                    cur_message = 10;
                    text_location = 3;
                    text_flipped = 1;
                    alarm[3] = room_speed;
                    global.storyline_array[39] = 1;
                    break;
            }
            
            game_index = ds_list_find_value(game_list, game_increment);
            selected_game = game_array[game_index][0];
            selected_diff = game_array[game_index][1];
            game_array[game_index][1] += 1;
            last_game = game_index;
            combat_round += 1;
            
            if (dialog_active == 0)
                alarm[1] = room_speed;
            
            game_increment++;
            
            if (game_increment > total_games)
            {
                game_increment = 0;
                ds_list_shuffle(game_list);
                
                while (ds_list_find_value(game_list, game_increment) == last_game)
                    ds_list_shuffle(game_list);
            }
        }
    }
    else if (death_trigger == 0)
    {
        death_trigger = 1;
        scr_sound_play(snd_combat_death, 0.4, 1, false);
        audio_sound_gain(snd_rain, audio_store[1], 500);
        audio_sound_gain(snd_insidewind, audio_store[2], 500);
        audio_sound_gain(snd_outsidewind, audio_store[3], 500);
        audio_sound_gain(snd_stormrain, audio_store[4], 500);
        audio_sound_gain(snd_music_shadows_sonata, audio_store[5], 500);
        audio_sound_gain(music_layer[0], 0, 500);
        audio_sound_gain(music_layer[1], 0, 500);
        
        if (instance_exists(obj_game_parent))
            obj_game_parent.alarm[11] = 1;
        
        dialog_active = 1;
        dialog_step = 2;
        cur_message = 12;
        text_location = 3;
        text_flipped = 1;
        alarm[3] = room_speed;
        global.storyline_array[39] = 2;
    }
}
else if (global.player_hp_cur <= 0)
{
    if (death_trigger == 0)
    {
        death_trigger = 1;
        scr_sound_play(snd_combat_death, 0.4, 1, false);
        audio_sound_gain(snd_rain, audio_store[1], 500);
        audio_sound_gain(snd_insidewind, audio_store[2], 500);
        audio_sound_gain(snd_outsidewind, audio_store[3], 500);
        audio_sound_gain(snd_stormrain, audio_store[4], 500);
        audio_sound_gain(snd_music_shadows_sonata, audio_store[5], 500);
        audio_sound_gain(music_layer[0], 0, 500);
        audio_sound_gain(music_layer[1], 0, 500);
        
        if (instance_exists(obj_game_parent))
            obj_game_parent.alarm[11] = 1;
        
        dialog_active = 1;
        dialog_step = 2;
        cur_message = 12;
        text_location = 3;
        alarm[3] = room_speed;
        global.storyline_array[39] = 2;
    }
}

if (talking_state == 0)
{
    scr_talk();
}
else if (global.current_talker == id)
{
    if (options_state == 0)
    {
        if (global.accept_key && text_complete == 1)
        {
            text_complete = 0;
            
            switch (dialog_step)
            {
                case 1:
                    switch (next_step)
                    {
                        case 1:
                            alarm[1] = room_speed;
                            dialog_active = 0;
                            end_dialog();
                            break;
                    }
                    
                    break;
                
                case 2:
                    switch (next_step)
                    {
                        case 1:
                            with (obj_barghest_combat_parent)
                            {
                                sprite_index = asset_get_index("spr_barghest_enemy_" + string(enemy_section) + "_charge");
                                image_speed = 0.3;
                            }
                            
                            scr_sound_play(snd_barghest_dodge_charge, 0.2, random_range(0.95, 1), true);
                            next_step = 2;
                            cur_message = 11;
                            text_flipped = 0;
                            text_location = 4;
                            text_flipped = 0;
                            activate_dialog();
                            break;
                        
                        case 2:
                            alarm[4] = room_speed * 2;
                            end_dialog();
                            break;
                    }
                    
                    break;
                
                case 3:
                    switch (next_step)
                    {
                        case 1:
                            next_step = 2;
                            cur_message = 14;
                            activate_dialog();
                            break;
                        
                        case 2:
                            next_step = 3;
                            cur_message = 15;
                            activate_dialog();
                            break;
                        
                        case 3:
                            with (obj_barghest1_combat_2)
                            {
                                audio_stop_sound(snd_barghest_dodge_charge);
                                sprite_index = spr_barghest_combat_down_laser;
                                scr_sound_play(snd_barghest_dodge_blast, 0.2, 1, true);
                                instance_create_depth(obj_barghest1_binder_blocking.x, obj_barghest1_binder_blocking.y, 0, obj_barghest1_binder_blocking_splash);
                                instance_create_depth(x, y, 0, obj_barghest1_fade);
                            }
                            
                            end_dialog();
                            break;
                    }
                    
                    break;
            }
        }
    }
}
