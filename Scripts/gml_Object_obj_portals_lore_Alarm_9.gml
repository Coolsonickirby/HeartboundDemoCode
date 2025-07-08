sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_down_pullportal");
image_speed = 0.2;
image_index = 0;
speed = 0;
global.current_menu = 5;
scr_handle_mouse(true, true);
global.cursor_model = spr_cursor_heart;
global.menu_active = 1;
global.player_frozen = 1;
