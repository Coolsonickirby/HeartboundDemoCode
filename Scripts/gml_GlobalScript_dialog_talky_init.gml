function dialog_talky_init()
{
    global.talky_list[UnknownEnum.Value_0][1] = spr_blank_talky;
    var selected_clothing = "pajama";
    
    switch (global.player_clothing)
    {
        case "sweater":
            selected_clothing = "sweater";
            break;
        
        case "sweaterbook":
            selected_clothing = "sweater";
            break;
        
        case "sweaterhat":
            selected_clothing = "sweaterhat";
            break;
        
        case "pajama":
            selected_clothing = "pajama";
            break;
        
        case "pajamabook":
            selected_clothing = "pajama";
            break;
        
        case "pajamahat":
            selected_clothing = "pajamahat";
            break;
    }
    
    global.talky_list[UnknownEnum.Value_1][1] = asset_get_index("spr_lore_talky_neutral_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][2] = asset_get_index("spr_lore_talky_darkmoment_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][3] = asset_get_index("spr_lore_talky_surprise_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][4] = asset_get_index("spr_lore_talky_fear_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][5] = asset_get_index("spr_lore_talky_smirk_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][6] = asset_get_index("spr_lore_talky_hurt_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][7] = asset_get_index("spr_lore_talky_determined_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][8] = asset_get_index("spr_lore_talky_grit_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][9] = asset_get_index("spr_lore_talky_gritcrying_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][10] = asset_get_index("spr_lore_talky_yell_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][11] = asset_get_index("spr_lore_talky_yellcrying_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][12] = asset_get_index("spr_lore_talky_confused_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][13] = asset_get_index("spr_lore_talky_sad_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][14] = asset_get_index("spr_lore_talky_suspicious_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][15] = asset_get_index("spr_lore_talky_glowbringer_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][16] = asset_get_index("spr_lore_talky_darksider_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][17] = asset_get_index("spr_lore_talky_sticky_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][18] = asset_get_index("spr_lore_talky_reallysuspicious_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][19] = asset_get_index("spr_lore_talky_scrunch_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][20] = asset_get_index("spr_lore_talky_whistle_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][21] = asset_get_index("spr_lore_talky_reallysad_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][22] = asset_get_index("spr_lore_talky_fervor_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][23] = asset_get_index("spr_lore_talky_gross_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][24] = asset_get_index("spr_lore_talky_dizzy_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][25] = asset_get_index("spr_lore_talky_running_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][26] = asset_get_index("spr_lore_talky_nervous_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][27] = asset_get_index("spr_lore_talky_reallynervous_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][28] = asset_get_index("spr_lore_talky_faceless_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][29] = asset_get_index("spr_lore_talky_darkneutral_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][30] = asset_get_index("spr_lore_talky_reallydarkneutral_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][31] = asset_get_index("spr_lore_talky_reallyneutral_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][32] = asset_get_index("spr_lore_talky_holdlaugh_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_1][33] = asset_get_index("spr_lore_talky_laugh_" + selected_clothing);
    global.talky_list[UnknownEnum.Value_2][1] = spr_baron_talky_neutral;
    global.talky_list[UnknownEnum.Value_2][2] = spr_baron_talky_sleeping;
    global.talky_list[UnknownEnum.Value_2][3] = spr_baron_talky_sad;
    global.talky_list[UnknownEnum.Value_2][4] = spr_baron_talky_surprise;
    global.talky_list[UnknownEnum.Value_2][5] = spr_baron_talky_happy;
    global.talky_list[UnknownEnum.Value_2][6] = spr_baron_talky_shadow;
    global.talky_list[UnknownEnum.Value_2][7] = spr_blank_talky;
    global.talky_list[UnknownEnum.Value_3][1] = spr_dad_talky_neutral;
    global.talky_list[UnknownEnum.Value_3][2] = spr_dad_talky_neutral_office;
    global.talky_list[UnknownEnum.Value_3][3] = spr_dad_talky_sad_office;
    global.talky_list[UnknownEnum.Value_3][4] = spr_dad_talky_surprise_office;
    global.talky_list[UnknownEnum.Value_3][5] = spr_dad_talky_angry_office;
    global.talky_list[UnknownEnum.Value_3][6] = spr_dad_talky_hidden;
    global.talky_list[UnknownEnum.Value_4][1] = spr_binder_talky_neutral;
    global.talky_list[UnknownEnum.Value_4][2] = spr_binder_talky_casting;
    global.talky_list[UnknownEnum.Value_4][3] = spr_binder_talky_happy;
    global.talky_list[UnknownEnum.Value_4][4] = spr_binder_talky_shocked;
    global.talky_list[UnknownEnum.Value_4][5] = spr_binder_talky_sad;
    global.talky_list[UnknownEnum.Value_4][6] = spr_binder_talky_confused;
    global.talky_list[UnknownEnum.Value_4][7] = spr_binder_talky_glitch;
    global.talky_list[UnknownEnum.Value_4][8] = spr_binder_talky_office;
    global.talky_list[UnknownEnum.Value_5][1] = spr_barghest_talky_neutral;
    global.talky_list[UnknownEnum.Value_5][2] = spr_barghest_talky_hurt;
    global.talky_list[UnknownEnum.Value_6][1] = spr_blank_talky;
    global.talky_list[UnknownEnum.Value_6][2] = spr_artifact_talky_neutral;
    global.talky_list[UnknownEnum.Value_6][3] = spr_artifact_talky_scared;
    global.talky_list[UnknownEnum.Value_6][4] = spr_artifact_talky_crying;
    global.talky_list[UnknownEnum.Value_7][1] = spr_gizmo_talky_neutral;
    global.talky_list[UnknownEnum.Value_7][2] = spr_gizmo_talky_grumpy;
    global.talky_list[UnknownEnum.Value_8][1] = spr_garbage_talky;
    global.talky_list[UnknownEnum.Value_9][1] = spr_dogfood_talky;
    global.talky_list[UnknownEnum.Value_10][1] = spr_axe_talky;
    global.talky_list[UnknownEnum.Value_11][1] = spr_collar_talky;
    global.talky_list[UnknownEnum.Value_12][1] = spr_page_talky;
    global.talky_list[UnknownEnum.Value_13][1] = spr_pirate_talky;
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_8,
    Value_9,
    Value_10,
    Value_11,
    Value_12,
    Value_13
}
