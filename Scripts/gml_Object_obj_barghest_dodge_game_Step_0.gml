with (obj_barghest_dodge_lore_parent)
{
    if (obj_barghest_dodge_game.dodge_position == draw_position)
    {
        if (place_meeting(round(x), round(y), obj_barghest_combat_parent))
        {
            if (obj_barghest_dodge_game.damage_taken == 0)
            {
                if (obj_barghest_dodge_game.dodge_position == 2)
                    scr_screenshake(4, 0.5, 0);
                else
                    scr_screenshake(4, 0.5, 2);
                
                scr_damage_target(1, obj_combat_player_health_parent, x, y);
                obj_barghest_dodge_game.damage_taken = 1;
            }
        }
    }
}

if (damage_taken == 0)
{
    if (global.left_key_pressed)
    {
        dodge_position -= 1;
        
        if (dodge_position < 1)
            dodge_position = 1;
    }
    else if (global.right_key_pressed)
    {
        dodge_position += 1;
        
        if (dodge_position > 3)
            dodge_position = 3;
    }
}
