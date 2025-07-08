event_inherited();
glow_active = 1;
image_index = global.storyline_array[23];
clamp(image_index, 0, 1);
text_location = 0;
talk_distance = 10;
cur_message = 3;
text_skip = 1;
text_fade = 0;
text_border = 1;

if (global.storyline_array[23] == 0)
{
    question_true = 1;
}
else
{
    text_skip = 0;
    text_fade = 1;
    question_true = 0;
    text_location = 1;
    text_border = 0;
    cur_message = 8;
    next_step = 7;
}

question_asked = 0;
question_answered = 0;
