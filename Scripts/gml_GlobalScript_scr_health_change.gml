function scr_health_change(arg0)
{
    var clothing_selected = arg0;
    
    switch (clothing_selected)
    {
        case 0:
            global.player_hp_cur = 10;
            global.player_hp_max = 10;
            global.player_clothing = "pajama";
            break;
        
        case 1:
            global.player_hp_cur = 20;
            global.player_hp_max = 20;
            global.player_clothing = "sweater";
            break;
        
        case 2:
            global.player_hp_cur = 10;
            global.player_hp_max = 10;
            global.player_clothing = "pajamabook";
            break;
        
        case 3:
            global.player_hp_cur = 20;
            global.player_hp_max = 20;
            global.player_clothing = "sweaterbook";
            break;
        
        case 4:
            global.player_hp_cur = 10;
            global.player_hp_max = 10;
            global.player_clothing = "pajamahat";
            break;
        
        case 5:
            global.player_hp_cur = 20;
            global.player_hp_max = 20;
            global.player_clothing = "sweaterhat";
            break;
    }
    
    if (global.storyline_array[56] == 1)
    {
        global.player_hp_cur += (global.player_hp_max * 0.1);
        global.player_hp_max += (global.player_hp_max * 0.1);
    }
}
