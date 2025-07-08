event_inherited();
cur_message = 2;
dialog_step = 1;
talk_distance = 10;
question_true = 0;
question_asked = 0;
question_answered = 0;
shadow_name = spr_bedroom_dresser_shadow;

if (global.storyline_array[1] == 0)
{
    cur_message = 2;
    question_true = 1;
}
else
{
    cur_message = 3;
    dialog_step = 2;
}
