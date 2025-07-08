event_inherited();
talk_distance = 20;
cur_message = 4000;
dialog_step = 1;
question_true = 0;
question_asked = 0;
question_answered = 0;
depth = -978;
image_speed = 0.15;

if (global.storyline_array[210] == 1)
{
    if (!instance_exists(obj_cafe_controller_coffee))
        instance_create_depth(0, 0, 0, obj_cafe_controller_coffee);
}
