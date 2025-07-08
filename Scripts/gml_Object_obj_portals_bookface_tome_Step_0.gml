if (instance_exists(obj_portals_lore))
{
    if (y < obj_portals_lore.y)
    {
        with (obj_portals_lore)
        {
            target_portal = other.target_portal;
            var portal_id = asset_get_index("obj_portals_portal_" + string(target_portal));
            direction = point_direction(x, y, portal_id.x, portal_id.y);
            speed = 3;
            
            switch (target_portal)
            {
                case 1:
                    sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_left_bookface");
                    break;
                
                case 2:
                    sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_bookface");
                    break;
                
                case 3:
                    sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_right_bookface");
                    break;
            }
            
            scr_screenshake(2, 0.5, 1);
            alarm[10] = room_speed * 0.5;
        }
        
        scr_sound_play(snd_darkworld_booksmack, 0.4, 1, false);
        scr_screenshake(2, 0.5, 1);
        instance_destroy();
    }
}
