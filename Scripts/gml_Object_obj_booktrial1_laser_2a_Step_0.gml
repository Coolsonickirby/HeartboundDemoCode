event_inherited();

if (instance_exists(obj_booktrial1_switch_1))
{
    if (obj_booktrial1_switch_1.activated == 0)
        instance_destroy();
}
