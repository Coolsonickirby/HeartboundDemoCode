function scr_damage_target(arg0, arg1, arg2, arg3)
{
    damage_total = arg0;
    damage_target = arg1;
    spawn_x = arg2;
    spawn_y = arg3;
    damage_polarity = sign(damage_total);
    
    repeat (abs(damage_total))
    {
        damage_bit = instance_create_depth(spawn_x, spawn_y, 0, obj_damage_bit);
        
        with (damage_bit)
        {
            damage_target = other.damage_target;
            damage_polarity = other.damage_polarity;
            damage_amount = damage_polarity;
            
            switch (damage_target)
            {
                case obj_combat_player_health_parent:
                    if (damage_polarity != -1)
                        global.storyline_array[280] = 1;
                    
                    global.player_hp_check -= damage_amount;
                    
                    switch (global.storyline_array[384])
                    {
                        case 0:
                            switch (damage_polarity)
                            {
                                case -1:
                                    image_blend = #FDC571;
                                    break;
                                
                                case 1:
                                    image_blend = #9677BB;
                                    break;
                            }
                            
                            break;
                        
                        case 1:
                            switch (damage_polarity)
                            {
                                case -1:
                                    image_blend = #9677BB;
                                    break;
                                
                                case 1:
                                    image_blend = #FDC571;
                                    break;
                            }
                            
                            break;
                    }
                    
                    break;
                
                case obj_combat_enemy_health_parent:
                    global.enemy_hp_check -= damage_amount;
                    
                    switch (obj_combat_enemy_health_parent.object_index)
                    {
                        default:
                            switch (damage_polarity)
                            {
                                case -1:
                                    image_blend = #9677BB;
                                    break;
                                
                                case 1:
                                    image_blend = #FDC571;
                                    break;
                            }
                            
                            break;
                    }
                    
                    break;
            }
        }
    }
}
