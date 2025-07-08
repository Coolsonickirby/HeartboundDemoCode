for (xx = 1; xx < 10000; xx++)
{
    global.dialog_array[xx][1] = " ";
    global.dialog_array[xx][2] = UnknownEnum.Value_0;
}

script_settings = asset_get_index("global_settings_dialog_" + global.game_language);

if (script_exists(script_settings))
{
    script_execute(asset_get_index("global_settings_dialog_ENUS"));
    script_execute(script_settings);
}
else
{
    script_execute(asset_get_index("global_settings_dialog_ENUS"));
}

var script_splits = 0;
var script_room = room_get_name(room);

for (xx = 0; xx < string_length(script_room); xx++)
{
    if (string_char_at(script_room, xx) == "_")
    {
        script_splits += 1;
        
        if (script_splits > 1)
        {
            script_room = string_copy(script_room, 0, xx - 1);
            break;
        }
    }
}

var script_base = asset_get_index(script_room + "_dialog_ENUS");
var script_index = asset_get_index(script_room + "_dialog_" + global.game_language);

if (script_exists(script_base))
{
    script_execute(script_base);
    
    switch (global.game_language)
    {
        case "JAJP":
            draw_set_font(global.font_jajp);
            global.language_type = 1;
            global.glyph_offset = 2;
            break;
    }
}
else
{
    show_debug_message("MISSING DIALOG SCRIPT: " + script_room + "_dialog_ENUS");
}

if (script_exists(script_index))
{
    script_execute(script_index);
}
else
{
    show_debug_message("MISSING DIALOG SCRIPT: " + script_room + "_dialog_" + global.game_language);
    draw_set_font(global.font_button);
    global.language_type = 0;
    global.glyph_offset = 0;
}

var animus_name = string_replace(script_room, "animus", "LOAD_ROAMING");
var animus_check = asset_get_index(animus_name);

if (animus_check == -1)
{
    var animus_base = asset_get_index("animus_roaming_dialog_ENUS");
    
    if (script_exists(animus_base))
        script_execute(animus_base);
    else
        show_debug_message("MISSING DIALOG SCRIPT: animus_roaming_dialog_ENUS");
    
    var animus_index = asset_get_index("animus_roaming_dialog_" + global.game_language);
    
    if (script_exists(animus_index))
        script_execute(animus_index);
    else
        show_debug_message("MISSING DIALOG SCRIPT: animus_roaming_dialog_" + global.game_language);
}

enum UnknownEnum
{
    Value_0
}
