game_set_speed(60, gamespeed_fps);
randomize();

score = 0;
lives = 3;

paused = false;
paused_surf = -1;
_time_survived = 0;

global._powerup_total = 0;
global._enemies_killed = 0;
global.music = true;
global.sound = true;