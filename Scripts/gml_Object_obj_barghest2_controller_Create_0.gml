event_inherited();
global.current_menu = 0;
global.combat_active = 1;
global.enemy_hp_cur = 200;
global.enemy_hp_max = 200;
global.enemy_hp_check = global.enemy_hp_max;
global.player_hp_cur = global.player_hp_max;
global.player_hp_check = global.player_hp_max;
death_trigger = 0;
combat_round = 0;
activate_game = 0;
last_game = 0;
selected_game = 0;
game_array[0][0] = obj_barghest_dodge_game;
game_array[1][0] = obj_barghest_pods_game;
game_array[2][0] = obj_barghest_pattern_game;
game_array[3][0] = obj_barghest_fire_game;
game_array[4][0] = obj_barghest_throw_game;
game_array[0][1] = 0;
game_array[1][1] = 0;
game_array[2][1] = 0;
game_array[3][1] = 0;
game_array[4][1] = 0;
total_games = array_height_2d(game_array) - 1;
game_increment = 0;
game_list = ds_list_create();

for (xx = 0; xx <= total_games; xx++)
    ds_list_add(game_list, xx);

ds_list_shuffle(game_list);
camera_x = camera_get_view_x(view_camera[view_current]);
camera_y = camera_get_view_y(view_camera[view_current]);
music_layer[0] = snd_music_shadows_intro;
music_layer[1] = snd_music_shadows_bitter;
scr_sound_play(music_layer[0], 0.25, 1, false);
instance_create_depth(0, 0, 0, obj_barghest2_talker);
alarm[4] = room_speed * audio_sound_length(music_layer[0]);
alarm[2] = room_speed * 2;
