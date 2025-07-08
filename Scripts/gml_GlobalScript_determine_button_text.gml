function determine_button_text(arg0)
{
    var button_text = "";
    
    switch (global.controller_type)
    {
        case 0:
            switch (arg0)
            {
                case 32769:
                    button_text = "A";
                    break;
                
                case 32770:
                    button_text = "B";
                    break;
                
                case 32771:
                    button_text = "X";
                    break;
                
                case 32772:
                    button_text = "Y";
                    break;
            }
            
            break;
        
        case 1:
            switch (arg0)
            {
                case 32769:
                    button_text = "×";
                    break;
                
                case 32770:
                    button_text = "○";
                    break;
                
                case 32771:
                    button_text = "□";
                    break;
                
                case 32772:
                    button_text = "△";
                    break;
            }
            
            break;
    }
    
    return button_text;
}
