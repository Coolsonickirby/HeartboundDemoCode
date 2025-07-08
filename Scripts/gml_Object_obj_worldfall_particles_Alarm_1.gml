if (alpha_fade > 0)
{
    alpha_fade -= alpha_step;
    part_type_alpha3(effect_fall, 0, alpha_fade, 0);
    alarm[1] = 1;
}
else
{
    alpha_fade = 0;
}
