if (activated != global.storyline_array[story_index])
{
    global.storyline_array[story_index] = activated;
    instance_create_depth(x, y, 0, obj_kitchen_talker_dogfood);
    scr_sound_play(snd_dogfood_pickup, 0.5, 1.25, false);
    instance_destroy();
}
