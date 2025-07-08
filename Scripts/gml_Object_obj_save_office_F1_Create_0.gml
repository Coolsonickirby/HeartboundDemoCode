event_inherited();
talk_distance = 30;
cur_message = 4000;
dialog_step = 1;
question_true = 0;
question_asked = 0;
question_answered = 0;
depth = -1;
image_speed = 0.15;

if (instance_exists(obj_servers_sticky))
{
    cur_message = 4006;
    dialog_step = 2;
}
