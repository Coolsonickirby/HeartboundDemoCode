event_inherited();
button_sound = snd_button_1;

if (global.game_language == "RURU")
    image_xscale = 1.25;

alarm[0] = 1;

if (!file_exists(global.save_file_name))
    x = 320;
