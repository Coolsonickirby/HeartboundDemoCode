obj_lore.y = 260;

with (obj_lore)
    instance_change(obj_barghest1_lore_sitting, true);

with (obj_barghest1_barghest_entrance)
    instance_destroy();

instance_create_depth(obj_lore.x, obj_lore.y - 40, 0, obj_barghest1_binder_blocking);

with (obj_barghest_combat_parent)
    depth = obj_barghest1_binder_blocking.depth + 2;

audio_sound_gain(snd_barghest_dodge_charge, 0.05, 500);
global.combat_active = 0;

with (obj_barghest1_arena)
    instance_destroy();

with (obj_barghest_arena_back)
    instance_destroy();

with (obj_combat_healthbar_lore)
    instance_destroy();

with (obj_combat_healthbar_barghest)
    instance_destroy();

with (obj_barghest_arena_particles)
    instance_destroy();

with (obj_lore_combat)
    instance_destroy();

audio_sound_gain(snd_rain, audio_store[1], 500);
audio_sound_gain(snd_insidewind, audio_store[2], 500);
audio_sound_gain(snd_outsidewind, audio_store[3], 500);
audio_sound_gain(snd_stormrain, audio_store[4], 500);
audio_sound_gain(snd_music_shadows_sonata, audio_store[5], 500);
audio_sound_gain(music_layer[0], 0, 500);
audio_sound_gain(music_layer[1], 0, 500);

if (death_trigger == 1)
    global.storyline_array[78] += 1;

dialog_step = 3;
cur_message = 13;
text_location = 0;
text_flipped = 0;
activate_dialog();
