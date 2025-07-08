event_inherited();
image_speed = 0;
sprite_norm = spr_bedroom_bed;
shadow_name = spr_bedroom_bed_shadow;

switch (global.storyline_array[1])
{
    case 0:
        sprite_acti = spr_bedroom_bed_lore_pajama;
        break;
    
    case 1:
        sprite_acti = spr_bedroom_bed_lore_sweater;
        break;
    
    case 2:
        sprite_acti = spr_bedroom_bed_lore_pajama;
        break;
    
    case 3:
        sprite_acti = spr_bedroom_bed_lore_sweater;
        break;
    
    case 4:
        sprite_acti = spr_bedroom_bed_lore_pajama;
        break;
    
    case 5:
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
