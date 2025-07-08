if (instance_exists(obj_baron_follower))
    instance_create_depth(x, y, 0, obj_hallway_talker_angrydad3);
else
    global.player_frozen = 0;
