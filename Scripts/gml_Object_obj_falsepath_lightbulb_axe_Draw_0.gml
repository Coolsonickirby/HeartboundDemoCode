draw_self();
gpu_set_blendmode_ext(9, bm_one);
draw_sprite_ext(glow_name, 0, round(x), round(y), 2, 2, image_angle, c_white, image_alpha);
gpu_set_blendmode(bm_normal);
