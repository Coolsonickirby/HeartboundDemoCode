event_inherited();
image_speed = 0;
sprite_norm = spr_bedroom_bed;
shadow_name = spr_bedroom_bed_shadow;
story_index = 1;

switch (global.storyline_array[story_index])
{
    case 0:
        sprite_acti = spr_bedroom_bed_lore_pajama;
        break;
    
    case 1:
        sprite_acti = spr_bedroom_bed_lore_sweater;
        break;
}

talk_distance = 15;
cur_message = 1;
conv_question = 0;
question_asked = 0;
question_answered = 0;

if (!instance_exists(obj_player_parent))
{
    sprite_index = sprite_acti;
    image_index = 0;
    image_speed = 0.1;
}

if (global.storyline_array[25] != 2)
{
    if (global.storyline_array[30] == 1)
    {
        if (global.storyline_array[31] == 0)
        {
            cur_message = 20;
            conv_question = 1;
            question_asked = 0;
            question_answered = 0;
        }
    }
}
