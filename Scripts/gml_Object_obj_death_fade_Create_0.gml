switch (global.storyline_array[409])
{
    case 0:
        next_room = global_bedhead;
        break;
    
    case 1:
        next_room = darkworld_judgehead;
        break;
}

next_color = 0;
alpha = 0;
fadein_timer = 0.02;
fadeout_timer = 0.02;
fadepause_timer = 1;
fadeout_amount = 0.01;
fadein_amount = 0.05;
fade_out = true;
depth = -500000;
alarm[1] = 1;
global.storyline_array[70] = 0;
