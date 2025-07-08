event_inherited();
talk_distance = 10;
cur_message = 6;
shadow_name = spr_kitchen_stove_shadow;
glow_name = spr_kitchen_stove_glow;
image_speed = 0;
image_index = global.storyline_array[19];
conv_question = 1;
question_asked = 0;
question_answered = 0;

if (global.storyline_array[25] == 0)
{
    if (global.storyline_array[19] == 0)
    {
        conv_question = 1;
        cur_message = 6;
    }
    else
    {
        conv_question = 0;
        cur_message = 7;
    }
}
else
{
    image_index = 0;
    
    if (global.storyline_array[19] == 0)
    {
        conv_question = 0;
        cur_message = 34;
    }
    else
    {
        conv_question = 0;
        cur_message = 35;
    }
}
