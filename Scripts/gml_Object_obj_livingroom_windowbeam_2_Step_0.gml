if (instance_exists(obj_music_parent))
{
    if (obj_music_parent.effect_active == 1)
    {
        light_flash = 1;
        diffuse = 8;
        luminosity = 500;
        falloff = 10;
        image_blend = #F8F8FF;
        sprite_index = sprite_effect;
        image_speed = 0.2;
    }
    else
    {
        light_flash = 0;
        diffuse = 5;
        luminosity = 255;
        falloff = 30;
        image_blend = #F5DEB3;
        sprite_index = sprite_normal;
        image_speed = 0.2;
    }
}
