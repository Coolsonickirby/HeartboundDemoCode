global.shadow_surface = surface_create(room_width, room_height);
surface_set_target(global.shadow_surface);
draw_clear_alpha(c_black, 0);
surface_reset_target();
shadow_level = 0.8;
