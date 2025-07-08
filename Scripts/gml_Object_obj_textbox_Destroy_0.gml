if (new_talky != -4)
{
    with (new_talky)
        instance_destroy();
}

if (new_talky_injected != -4)
{
    with (new_talky_injected)
        instance_destroy();
}

if (new_textbox != -4)
{
    with (new_textbox)
    {
        if (text_fade == 1)
            alarm[0] = 1;
        else
            instance_destroy();
    }
}

if (new_con_arrow != -4)
{
    with (new_con_arrow)
        instance_destroy();
}

with (obj_button_dialog_parent)
    instance_destroy();

with (obj_letter)
{
    if (textbox_id == other.id)
    {
        if (text_fade == 1)
        {
            alarm[5] = 1;
            
            switch (fly_direction)
            {
                case 1:
                    break;
                
                case 2:
                    direction = irandom_range(85, 95);
                    speed = random_range(0.5, 1);
                    alarm[3] = 0;
                    break;
                
                case 3:
                    direction = irandom_range(175, 185);
                    speed = random_range(0.5, 1);
                    alarm[3] = 0;
                    break;
                
                case 4:
                    direction = irandom_range(265, 275);
                    speed = random_range(0.5, 1);
                    alarm[3] = 0;
                    break;
                
                case 5:
                    direction = irandom_range(355, 5);
                    speed = random_range(0.5, 1);
                    alarm[3] = 0;
                    break;
            }
        }
        else
        {
            instance_destroy();
        }
    }
}
