event_inherited();
story_index = 24;
food_index = 21;
baron_index = 22;
image_index = global.storyline_array[story_index];
talk_distance = 10;
cur_message = 1;
conv_question = 1;
question_asked = 0;
question_answered = 0;
image_speed = 0;

switch (global.storyline_array[story_index])
{
    case 0:
        switch (global.storyline_array[food_index])
        {
            case 0:
                conv_question = 1;
                cur_message = 1;
                break;
            
            case 1:
                conv_question = 1;
                cur_message = 2;
                break;
            
            case 2:
                conv_question = 1;
                cur_message = 1;
                break;
        }
        
        break;
    
    case 1:
        image_index = 1;
        conv_question = 0;
        cur_message = 10;
        break;
    
    case 2:
        image_index = 1;
        conv_question = 0;
        cur_message = 12;
        break;
    
    case 3:
        image_index = 0;
        conv_question = 0;
        cur_message = 16;
        break;
}
