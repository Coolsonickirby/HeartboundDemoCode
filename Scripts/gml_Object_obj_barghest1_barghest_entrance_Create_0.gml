event_inherited();
collision_mask = spr_blank_mask;
image_speed = 0.1;

if (global.storyline_array[39] == 1)
    instance_destroy();

audio_sound_gain(snd_music_shadows_sonata, 0, 200);
