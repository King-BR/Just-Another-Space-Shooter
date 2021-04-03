sprite_index = choose(spr_asteroid_small, spr_asteroid_med, spr_asteroid_huge, spr_asteroid_huge2);
direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);
speed = 1;

move_wrap(true, true, sprite_width/2);

