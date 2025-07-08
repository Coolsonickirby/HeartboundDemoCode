event_inherited();

if (y <= 196)
{
    laser_cast = 1;
    
    if (sprite_index != locked_sprite)
    {
        sprite_index = locked_sprite;
        scr_sound_play(snd_binder_pillarstop, 0.2, 1, false);
    }
}
else
{
    laser_cast = 0;
    sprite_index = start_sprite;
}
