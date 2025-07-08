event_inherited();
sound_on = snd_switchon;
sound_off = snd_switchoff;
activated = global.storyline_array[70];
talk_distance = 37;
image_speed = 0;
image_index = activated;
object_spawn = obj_home_roomdark_storm;
object_color = 13473693;
spawned = 0;

if (activated == 0)
{
    if (!instance_exists(obj_roomdark_parent))
    {
        with (instance_create_depth(x, y, 0, object_spawn))
            object_color = other.object_color;
    }
}

if (global.storyline_array[29] == 1)
    sprite_index = spr_home_lightswitch_burnt;
