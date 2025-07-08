switch (global.game_language)
{
    case "JAJP":
        var rotate_list = "ゝゞゟ゠ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴヵヶヷヸヹヺ・ーヽヾヿ";
        var rotate_length = string_length(rotate_list) - 1;
        var rotate_index = irandom_range(0, rotate_length);
        cur_char = string_char_at(rotate_list, rotate_index);
        break;
    
    default:
        image_index = irandom_range(1, image_number - 1);
        break;
}

alarm[4] = 1;
