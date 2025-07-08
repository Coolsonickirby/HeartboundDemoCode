depth = -6005;
image_speed = 0.1;
angle_modifier = choose(-3, -2, -1, 1, 2, 3);
time_modifier = (obj_combat_parent.selected_diff * 0.2) + (global.storyline_array[107] * 0.2);
speed = random_range(3, 3.5) + time_modifier;
speed = clamp(speed, 3, 4.5);
direction = 270;

if (global.control_type == 1)
{
    time_modifier = (obj_combat_parent.selected_diff * 0.2) + (global.storyline_array[107] * 0.2);
    speed = 1.5 + time_modifier;
    speed = clamp(speed, 1.5, 2.5);
}

object_selected = 0;
pod_control = 0;
pod_number = 0;
pod_state = 0;
