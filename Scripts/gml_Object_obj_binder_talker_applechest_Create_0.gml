event_inherited();
question_answered = 0;
question_asked = 0;
question_true = 0;
text_location = 2;
talk_distance = 20;
cur_message = 16;

switch (global.storyline_array[41])
{
    case 1:
        question_true = 1;
        cur_message = 18;
        break;
    
    case 2:
        cur_message = 20;
        break;
    
    case 3:
        cur_message = 22;
        break;
}
