event_inherited();
global.current_menu = 0;
global.combat_active = 1;
global.enemy_hp_cur = 500;
global.enemy_hp_max = 500;
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
audio_store[1] = audio_sound_get_gain(snd_rain);
audio_store[2] = audio_sound_get_gain(snd_insidewind);
audio_store[3] = audio_sound_get_gain(snd_outsidewind);
audio_store[4] = audio_sound_get_gain(snd_stormrain);
audio_store[5] = audio_sound_get_gain(snd_music_shadows_sonata);
audio_sound_gain(snd_rain, audio_store[1] * 0.1, 500);
audio_sound_gain(snd_insidewind, audio_store[2] * 0.1, 500);
audio_sound_gain(snd_outsidewind, audio_store[3] * 0.1, 500);
audio_sound_gain(snd_stormrain, audio_store[4] * 0.1, 500);
audio_sound_gain(snd_music_shadows_sonata, audio_store[5] * 0.1, 500);
music_layer[0] = snd_music_shadows_intro;
music_layer[1] = snd_music_shadows_bitter;
scr_sound_play(music_layer[0], 0.25, 1, false);
alarm[5] = room_speed * audio_sound_length(music_layer[0]);
alarm[2] = room_speed * 2;

if (instance_exists(obj_view))
{
    obj_view.follow_player = 0;
    obj_view.x = camera_get_view_x(view_camera[view_current]) + (camera_get_view_width(view_camera[view_current]) * 0.5);
    obj_view.y = camera_get_view_y(view_camera[view_current]) + (camera_get_view_height(view_camera[view_current]) * 0.5);
}
