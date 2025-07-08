function scr_talk()
{
    if (global.conv_talking == 0)
    {
        if (global.accept_key == 1)
        {
            if (global.player_frozen == 0)
            {
                if (distance_to_object(obj_player_parent) <= talk_distance)
                {
                    var pwall_1 = obj_player_parent.collide_left_x;
                    var pwall_2 = obj_player_parent.collide_top_y;
                    var pwall_3 = obj_player_parent.collide_right_x;
                    var pwall_4 = obj_player_parent.collide_bottom_y;
                    var right_check = 0;
                    var down_check = 0;
                    var left_check = 0;
                    var up_check = 0;
                    var check_character = object_is_ancestor(object_index, obj_character_parent);
                    var check_investigate = object_is_ancestor(object_index, obj_investigate_parent);
                    var check_talker = object_is_ancestor(object_index, obj_talker_parent);
                    var check_gizmo = object_is_ancestor(object_index, obj_gizmo_parent);
                    
                    if (check_character == 1)
                        mask_index = collision_mask;
                    
                    switch (global.player_direction)
                    {
                        case 1:
                            var twall_1 = bbox_left - talk_distance;
                            var twall_2 = bbox_top;
                            var twall_3 = bbox_left;
                            var twall_4 = bbox_bottom;
                            right_check = rectangle_in_rectangle(pwall_1, pwall_2, pwall_3, pwall_4, twall_1, twall_2, twall_3, twall_4);
                            break;
                        
                        case 2:
                            var twall_1 = bbox_left;
                            var twall_2 = bbox_top - talk_distance;
                            var twall_3 = bbox_right;
                            var twall_4 = bbox_bottom;
                            down_check = rectangle_in_rectangle(pwall_1, pwall_2, pwall_3, pwall_4, twall_1, twall_2, twall_3, twall_4);
                            break;
                        
                        case 3:
                            var twall_1 = bbox_right;
                            var twall_2 = bbox_top;
                            var twall_3 = bbox_right + talk_distance;
                            var twall_4 = bbox_bottom;
                            left_check = rectangle_in_rectangle(pwall_1, pwall_2, pwall_3, pwall_4, twall_1, twall_2, twall_3, twall_4);
                            break;
                        
                        case 4:
                            var twall_1 = bbox_left;
                            var twall_2 = bbox_top;
                            var twall_3 = bbox_right;
                            var twall_4 = bbox_bottom + talk_distance;
                            up_check = rectangle_in_rectangle(pwall_1, pwall_2, pwall_3, pwall_4, twall_1, twall_2, twall_3, twall_4);
                            break;
                    }
                    
                    if (right_check || down_check || left_check || up_check)
                    {
                        global.current_talker = id;
                        
                        if (global.current_talker == id)
                        {
                            if (check_character == 1 || check_investigate == 1 || check_talker == 1)
                            {
                                if (check_character == 1)
                                    mask_index = sprite_index;
                                
                                activate_dialog();
                            }
                            
                            if (check_gizmo == 1)
                            {
                                if (activated == 0)
                                    activated = 1;
                                else
                                    activated = 0;
                                
                                global.current_talker = -4;
                            }
                        }
                    }
                }
            }
        }
    }
}
