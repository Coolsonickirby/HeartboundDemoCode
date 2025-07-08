gpu_set_blendmode_ext(9, bm_zero);
var color_slice = 255 - (room_fade * 255);
var color_whole = make_color_rgb(color_slice, color_slice, color_slice);
draw_rectangle_color(0, 0, room_width, room_height, color_whole, color_whole, color_whole, color_whole, false);
gpu_set_blendmode(bm_normal);
