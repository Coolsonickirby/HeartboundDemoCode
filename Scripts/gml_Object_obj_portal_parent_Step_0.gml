if (instance_exists(obj_portals_lore))
{
    if (obj_portals_lore.target_portal == 0)
    {
        var check_1 = 0;
        var check_2 = 0;
        var check_3 = 0;
        
        if (instance_exists(obj_portals_portal_1))
            check_1 = obj_portals_portal_1.activated;
        
        if (instance_exists(obj_portals_portal_2))
            check_2 = obj_portals_portal_2.activated;
        
        if (instance_exists(obj_portals_portal_3))
            check_3 = obj_portals_portal_3.activated;
        
        var check_active = check_1 + check_2 + check_3;
        
        if (check_active == 0)
        {
            audio_sound_gain(snd_insidewind, 0.1, 250);
            audio_sound_gain(snd_outsidewind, 0.1, 250);
        }
        else
        {
            audio_sound_gain(snd_insidewind, 0, 250);
            audio_sound_gain(snd_outsidewind, 0, 250);
        }
    }
    else
    {
        audio_sound_gain(snd_insidewind, 0, 250);
        audio_sound_gain(snd_outsidewind, 0, 250);
    }
}
else if (instance_exists(obj_worldpath_lore))
{
    if (obj_worldpath_lore.target_portal == 0)
    {
        var check_1 = 0;
        var check_2 = 0;
        var check_3 = 0;
        
        if (instance_exists(obj_portals_portal_1))
            check_1 = obj_portals_portal_1.activated;
        
        if (instance_exists(obj_portals_portal_2))
            check_2 = obj_portals_portal_2.activated;
        
        if (instance_exists(obj_portals_portal_3))
            check_3 = obj_portals_portal_3.activated;
        
        var check_active = check_1 + check_2 + check_3;
        
        if (check_active == 0)
        {
            audio_sound_gain(snd_insidewind, 0.1, 250);
            audio_sound_gain(snd_outsidewind, 0.1, 250);
        }
        else
        {
            audio_sound_gain(snd_insidewind, 0, 250);
            audio_sound_gain(snd_outsidewind, 0, 250);
        }
    }
    else
    {
        audio_sound_gain(snd_insidewind, 0, 250);
        audio_sound_gain(snd_outsidewind, 0, 250);
    }
}
