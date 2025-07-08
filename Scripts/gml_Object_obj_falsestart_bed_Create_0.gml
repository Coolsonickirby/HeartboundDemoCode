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

if (!instance_exists(obj_player_parent))
{
    sprite_index = sprite_acti;
    image_index = 0;
    image_speed = 0.1;
}
