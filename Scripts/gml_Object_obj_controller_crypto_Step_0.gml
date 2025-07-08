if (keyboard_check_pressed(vk_anykey))
{
    if (keyboard_check_pressed(crypto_array[crypto_step]))
    {
        crypto_step += 1;
        
        if (crypto_step == total_crypto)
        {
            scr_sound_play(snd_crypto_success, 0.2, 1, 0);
            load_game();
            global.language_known = 1;
            save_game();
            crypto_file = file_text_open_write("SeeMeSayMe.thor");
            file_text_write_string(crypto_file, crypto_string);
            file_text_close(crypto_file);
            
            if (global.steam_achievements == 1)
                steam_set_achievement("ARG_LAUGHTER");
            
            instance_destroy();
        }
    }
    else if (crypto_step > 1)
    {
        crypto_step = 1;
    }
}
