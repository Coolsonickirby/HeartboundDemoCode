gpu_set_blendmode_ext(9, bm_zero);
draw_rectangle_color(0, 0, room_width, room_height, image_blend, image_blend, image_blend, image_blend, false);
gpu_set_blendmode(bm_normal);
