if (talking_state == 0)
{
    scr_talk();
}
else if (global.current_talker == id)
{
    if (options_state == 0)
    {
        if (global.accept_key && text_complete == 1)
        {
            text_complete = 0;
            
            switch (next_step)
            {
                case 1:
                    end_dialog();
                    
                    if (global.storyline_array[238] == 42)
                    {
                        if (global.steam_achievements == 1)
                            steam_set_achievement("ARG_CHAMPION");
                        
                        crypto_file = file_text_open_write("GLADYOUENJOYEDYOURTOAST.TXT");
                        file_text_write_string(crypto_file, "Memory Corrupted: Obtain new copy from OScar. T045T");
                        file_text_close(crypto_file);
                    }
                    
                    break;
            }
        }
    }
}
