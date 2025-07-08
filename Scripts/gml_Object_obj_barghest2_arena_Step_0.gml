if (image_xscale < 1)
{
    image_xscale += 0.025;
    image_yscale += 0.025;
}
else if (!instance_exists(obj_lore_combat))
{
    instance_create_depth(320, obj_view.y + 117, 0, obj_lore_combat);
    instance_create_depth(265, obj_view.y - 76, 0, obj_barghest2_combat_1);
    instance_create_depth(320, obj_view.y - 87, 0, obj_barghest2_combat_2);
    instance_create_depth(375, obj_view.y - 76, 0, obj_barghest2_combat_3);
    instance_create_depth(320, obj_view.y - 147, 0, obj_barghest_arena_particles);
}

if (!surface_exists(global.arena_surface))
{
    global.arena_surface = surface_create(200, 300);
    surface_set_target(global.arena_surface);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}
