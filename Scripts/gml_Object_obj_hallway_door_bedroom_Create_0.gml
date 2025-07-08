event_inherited();
player_x = 347;
player_y = 170;
next_room = home_bedroom;
next_color = 0;
fadein_timer = 0.02;
fadeout_timer = 0.02;
fadepause_timer = 0.02;
fadeout_amount = 0.05;
fadein_amount = 0.05;

if (global.storyline_array[25] != 2)
{
    snd_file = snd_bedroom_door;
    snd_volume = 0.05;
    snd_pitch = 1;
}
