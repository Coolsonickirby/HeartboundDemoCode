game_ended = 1;
obj_combat_parent.activate_game = 1;

with (obj_barghest_combat_parent)
    color_target = 16777215;

scr_handle_mouse(false, false);
instance_destroy();
