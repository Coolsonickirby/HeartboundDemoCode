event_inherited();
cur_message = 2;
dialog_step = 1;
talk_distance = 10;
question_true = 0;
question_asked = 0;
question_answered = 0;
shadow_name = spr_bedroom_dresser_shadow;

switch (global.storyline_array[1])
{
    case 0:
        cur_message = 7;
        question_true = 1;
        break;
    
    case 1:
        cur_message = 3;
        dialog_step = 2;
        break;
    
    case 2:
        cur_message = 7;
        question_true = 1;
        break;
    
    case 3:
        cur_message = 3;
        dialog_step = 2;
        break;
    
    case 4:
        cur_message = 7;
        question_true = 1;
        break;
    
    case 5:
        cur_message = 3;
        dialog_step = 2;
        break;
}
