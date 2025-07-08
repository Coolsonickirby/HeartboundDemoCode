attack_completed = 0;
attack_defeated = 0;
attack_number = 6 + obj_combat_parent.selected_diff + global.storyline_array[107];
attack_number = clamp(attack_number, 6, 12);
attack_array = 0;
game_ended = 0;

for (xx = 0; xx < attack_number; xx++)
    attack_array[xx] = 0;

var last_value = 0;

for (xx = 0; xx < attack_number; xx++)
{
    select_value = irandom_range(1, 4);
    
    while (select_value == last_value)
        select_value = irandom_range(1, 4);
    
    attack_array[xx] = select_value;
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

time_modifier = (obj_combat_parent.selected_diff * 0.1) + (global.storyline_array[107] * 0.1);
time_modifier = clamp(time_modifier, 0, 0.9);
attack_reset_delay = room_speed * (0.5 * (1 - time_modifier));
attack_reset_delay = clamp(attack_reset_delay, room_speed * 0.3, room_speed * 0.5);
attack_start_delay = room_speed * 0.5;

if (global.control_type == 1)
{
    time_modifier = (obj_combat_parent.selected_diff * 0.1) + (global.storyline_array[107] * 0.1);
    time_modifier = clamp(time_modifier, 0, 0.9);
    attack_reset_delay = room_speed * time_modifier;
    attack_reset_delay = clamp(attack_reset_delay, room_speed * 0.5, room_speed);
}

if (obj_combat_parent.selected_diff > 1)
{
    display_text = 0;
    alarm[1] = attack_start_delay;
}
else
{
    display_text = 1;
    alarm[0] = room_speed / (obj_combat_parent.selected_diff + 1);
}
