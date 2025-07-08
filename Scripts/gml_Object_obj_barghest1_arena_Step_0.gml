if (image_xscale < 1)
{
    image_xscale += 0.025;
    image_yscale += 0.025;
}
else if (!instance_exists(obj_lore_combat))
{
    instance_create_depth(320, 297, 0, obj_lore_combat);
    instance_create_depth(265, 104, 0, obj_barghest1_combat_1);
    instance_create_depth(320, 93, 0, obj_barghest1_combat_2);
    instance_create_depth(375, 104, 0, obj_barghest1_combat_3);
    instance_create_depth(320, 33, 0, obj_barghest_arena_particles);
}

if (!surface_exists(global.arena_surface))
{
    global.arena_surface = surface_create(200, 300);
    surface_set_target(global.arena_surface);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}
