function clear_game()
{
    load_game();
    
    if (global.storyline_array[409] == 4)
    {
        crypto_file = file_text_open_write("painful.memory");
        file_text_write_string(crypto_file, "Some things can't be forgotten.");
        file_text_writeln(crypto_file);
        file_text_write_string(crypto_file, "20091305120914050609140919080504");
        file_text_writeln(crypto_file);
        file_text_write_string(crypto_file, "0325031205051404091407");
        file_text_writeln(crypto_file);
        file_text_write_string(crypto_file, "061518070520061518070520061518070520");
        file_text_writeln(crypto_file);
        file_text_write_string(crypto_file, "0325031205020507091414091407");
        file_text_writeln(crypto_file);
        file_text_write_string(crypto_file, "25152111140523200805031514190517210514030519");
        file_text_writeln(crypto_file);
        file_text_write_string(crypto_file, "25152108010425152118030801140305");
        file_text_writeln(crypto_file);
        file_text_write_string(crypto_file, "25152103081519052008091916012008");
        file_text_writeln(crypto_file);
        file_text_write_string(crypto_file, "20091305071815231901140523");
        file_text_close(crypto_file);
    }
    
    randomize();
    global.world_seed = string(random_get_seed());
    global.start_room = home_bedroom;
    global.start_x = 0;
    global.start_y = 0;
    global.player_hp_cur = 10;
    global.player_hp_max = 10;
    global.language_known = 0;
    storyline_vars();
    save_game();
}
