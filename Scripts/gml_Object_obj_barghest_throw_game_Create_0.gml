depth = -6005;
image_speed = 0.1;

if (global.control_type == 1)
{
    sprite_index = spr_combat_controls_gamepad_button;
    button_text = determine_button_text(global.controller_button_down);
}

with (obj_barghest_combat_parent)
{
    if (enemy_section == 1 || enemy_section == 3)
        color_target = 0;
}

if (global.storyline_array[23] == 1)
    weapon_type = "axe";
else
    weapon_type = "stick";

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

instance_create_depth(obj_view.x + 90, obj_view.y, 0, obj_barghest_throw_slidebar);
instance_create_depth(obj_view.x, obj_view.y + 145, 0, obj_barghest_throw_stick);
