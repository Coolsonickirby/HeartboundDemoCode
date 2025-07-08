event_inherited();
story_index = 20;
story_var = global.storyline_array[story_index];
image_index = clamp(story_var, 0, 1);
talk_distance = 20;
cur_message = 9;
shadow_name = spr_kitchen_trash_shadow;
image_speed = 0;
conv_question = 1;
question_asked = 0;
question_answered = 0;

if (story_var == 1)
{
    conv_question = 0;
    cur_message = 10;
}
