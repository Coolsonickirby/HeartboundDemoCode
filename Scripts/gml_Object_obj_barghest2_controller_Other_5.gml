global.combat_active = 0;

with (obj_barghest2_arena)
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

audio_stop_sound(music_layer[0]);
audio_stop_sound(music_layer[1]);
audio_stop_sound(snd_barghest_dodge_blast);
ds_list_destroy(game_list);
instance_destroy();
