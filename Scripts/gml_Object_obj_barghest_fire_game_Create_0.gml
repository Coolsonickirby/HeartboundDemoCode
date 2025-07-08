attack_number = 3 + (obj_combat_parent.selected_diff * 2) + global.storyline_array[107];
attack_number = clamp(attack_number, 3, 8);
attack_bounce = 0;
attack_side = 0;
depth = -6005;
image_speed = 0.1;

if (global.control_type == 1)
    sprite_index = spr_combat_controls_gamepad_leftright;

with (obj_barghest_combat_parent)
{
    if (enemy_section == 1 || enemy_section == 3)
        color_target = 0;
}

with (obj_barghest_combat_parent)
{
    if (enemy_section == 2)
    {
        sprite_index = spr_barghest_enemy_2_charge;
        image_speed = 0.3;
    }
}

if (obj_combat_parent.selected_diff > 1)
{
    display_text = 0;
    alarm[0] = room_speed;
}
else
{
    display_text = 1;
    alarm[3] = room_speed / (obj_combat_parent.selected_diff + 1);
}

if (global.storyline_array[23] == 1)
    weapon_type = "axe";
else
    weapon_type = "stick";

instance_create_depth(320, obj_view.y + 145, 0, obj_barghest_fire_stick);
