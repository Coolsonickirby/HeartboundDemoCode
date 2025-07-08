if (portal_shift < 1)
{
    portal_shift += 0.05;
    portal_blend = merge_color(c_black, c_white, portal_shift);
    alarm[0] = 1;
}
