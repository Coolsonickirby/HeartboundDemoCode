pattern_current = 0;
pattern_steps = floor(3 + (obj_combat_parent.selected_diff * 0.5) + global.storyline_array[107]);
pattern_steps = clamp(pattern_steps, 3, 5);
pattern_array = 0;
game_started = 0;
game_ended = 0;

for (xx = 0; xx < pattern_steps; xx++)
    pattern_array[xx] = 0;

var last_value = 0;

for (xx = 0; xx < pattern_steps; xx++)
{
    select_value = irandom_range(1, 4);
    
    while (select_value == last_value)
        select_value = irandom_range(1, 4);
    
    pattern_array[xx] = select_value;
    last_value = select_value;
}

depth = -6005;
image_speed = 0.1;

with (obj_barghest_combat_parent)
    color_target = 0;

if (global.control_type == 0)
{
    scr_handle_mouse(true, true);
    
    if (global.storyline_array[23] == 1)
        global.cursor_model = spr_cursor_axe;
    else
        global.cursor_model = spr_cursor_poke;
}
else
{
    sprite_index = spr_combat_controls_gamepad_buttons;
}

pattern_start_delay = room_speed * 0.5;
pattern_reset_delay = room_speed * 0.6;

if (obj_combat_parent.selected_diff > 1)
{
    display_text = 0;
    alarm[1] = pattern_start_delay;
}
else
{
    display_text = 1;
    alarm[0] = room_speed / (obj_combat_parent.selected_diff + 1);
}
