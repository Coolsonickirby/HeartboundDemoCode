global.steam_screenshots = 0;
global.steam_achievements = 0;
global.pirated_game = 1;

if (steam_initialised())
{
    global.pirated_game = 0;
    global.steam_achievements = 1;
    
    if (steam_is_overlay_enabled())
        global.steam_screenshots = 1;
    
    steam_name = steam_get_persona_name();
    
    if (steam_name == "IGGGAMES" || steam_name == "Goldberg")
        global.pirated_game = 1;
    
    steam_id = steam_get_user_account_id();
    
    if (steam_id == 12345678 || steam_id == 76561197960287930)
        global.pirated_game = 1;
    
    if (steam_get_app_id() == 480)
        global.pirated_game = 1;
    
    if (file_exists("SteamConfig.ini"))
        global.pirated_game = 1;
}

alarm[0] = room_speed;
