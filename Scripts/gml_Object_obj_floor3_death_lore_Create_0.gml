event_inherited();
obj_view.follow_player = 1;
sprite_index = asset_get_index("spr_menu_lore_" + global.player_clothing);
y_anchor = y;
y_freq = 0.03;
dist_max = 4;
move_counter = 0;
text_location = 2;
talk_distance = 0;
cur_message = 1;
text_border = 0;
text_skip = 0;
text_fade = 1;
alarm[0] = room_speed * 4;
audio_stop_all();
scr_handle_mouse(false, false);
global.cursor_model = spr_cursor_heart;

if (instance_exists(obj_lore))
{
    with (obj_lore)
        instance_destroy();
}
