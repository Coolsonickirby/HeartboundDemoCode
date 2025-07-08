if (anim_step == 1)
{
    if (y > 190)
    {
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_walk");
        image_speed = 0.1;
        direction = point_direction(x, y, 320, 190);
        speed = 1;
    }
    else
    {
        anim_step = 0;
        sprite_index = asset_get_index("spr_lore_" + global.player_clothing + "_up_stand");
        image_speed = 0.1;
        speed = 0;
        depth = -4001;
        
        with (obj_booktrial4_tome)
            depth = -4000;
        
        with (obj_booktrial4_trigger_roomdark)
            instance_destroy();
        
        with (obj_booktrial4_roomdark)
            kill_shadows = 1;
        
        instance_create_depth(x, y, 0, obj_booktrial4_roomblack);
        
        with (obj_booktrial4_trigger_music)
            instance_destroy();
        
        with (obj_booktrial4_trigger_weird)
            instance_destroy();
        
        audio_sound_gain(snd_music_binder_weird, 0, 2000);
        audio_sound_gain(snd_music_binder_booktrial, 0, 2000);
        alarm[0] = room_speed * 4;
    }
}
