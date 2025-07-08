music_pitch = 1;
depth = -500001;
draw_x = room_width * 0.5;
draw_y = room_height + 25;
credits_file = file_text_open_read(global.credits_file_name);
credits_array[0] = 0;
credits_index = 0;
var xx;

for (xx = 0; !file_text_eof(credits_file); xx++)
{
    credits_array[xx] = file_text_read_string(credits_file);
    file_text_readln(credits_file);
}

file_text_close(credits_file);
credits_length = xx;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
alarm[0] = room_speed * 0.5;
alarm[1] = 1;
