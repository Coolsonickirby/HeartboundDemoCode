image_speed = 0;
image_index = image_number - 1;

if (global.storyline_array[25] == 1)
{
    alarm[1] = room_speed * 0.75;
}
else
{
    scr_screenshake(2, 0.5, 0);
    global.storyline_array[story_index] = 1;
    cur_message = 4;
    scr_sound_play(snd_home_doorslam, 0.75, 0.8, false);
    alarm[0] = room_speed * 0.75;
}
