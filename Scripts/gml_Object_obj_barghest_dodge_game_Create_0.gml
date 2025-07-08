dodge_position = 2;
attack_number = 3 + obj_combat_parent.selected_diff + global.storyline_array[107];
attack_number = clamp(attack_number, 3, 8);
attack_total = 0;
damage_taken = 0;
cur_target[1] = 0;
cur_target[2] = 0;
depth = -6005;
image_speed = 0.1;

if (global.control_type == 1)
    sprite_index = spr_combat_controls_gamepad_leftright;

time_modifier = (obj_combat_parent.selected_diff * 0.1) + (global.storyline_array[107] * 0.1);
attack_charge_delay = room_speed * (1.25 * (1 - time_modifier));
attack_charge_delay = clamp(attack_charge_delay, room_speed * 0.7, room_speed * 1.25);
attack_reset_delay = room_speed * (0.5 * (1 - time_modifier));
attack_reset_delay = clamp(attack_reset_delay, room_speed * 0.3, room_speed * 0.5);

if (obj_combat_parent.selected_diff > 1)
{
    display_text = 0;
    alarm[4] = 1;
}
else
{
    display_text = 1;
    alarm[3] = room_speed / (obj_combat_parent.selected_diff + 1);
}

instance_create_depth(246, obj_view.y + 116, 0, obj_barghest_dodge_lore_1);
instance_create_depth(320, obj_view.y + 117, 0, obj_barghest_dodge_lore_2);
instance_create_depth(393, obj_view.y + 116, 0, obj_barghest_dodge_lore_3);

if (instance_exists(obj_lore_combat))
{
    with (obj_lore_combat)
        image_alpha = 0;
}
