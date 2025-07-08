global.player_frozen = 1;
global.menu_active = 1;
global.current_menu = 4;
scr_handle_mouse(true, false);
image_xscale = 0.5;
image_yscale = 0.5;

switch (global.game_language)
{
    case "JAJP":
        draw_set_font(global.font_jajp);
        global.glyph_offset = 2;
        break;
}
