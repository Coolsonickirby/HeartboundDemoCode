event_inherited();
sound_on = snd_switchon;
sound_off = snd_switchoff;
story_index = 13;
activated = global.storyline_array[story_index];
talk_distance = 40;
image_speed = 0;
image_index = activated;
object_spawn = obj_home_roomdark_storm;
object_color = 13473693;
room_dark = 0;
spawned = 0;

if (activated == 0)
{
    if (!instance_exists(obj_roomdark_parent))
    {
        with (instance_create_depth(x, y, 0, object_spawn))
            object_color = other.object_color;
    }
}
