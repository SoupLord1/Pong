/// @description Insert description here
// You can write your code in this editor

//init ball properties
ballrad = 10;
ballpos = [window_get_width()/2, window_get_height()/2];
ballvel = [-1, -1];
ballspeed = 5;
rescooldown = 0;

/*
while (ballvel[0] == 0) {
	ballvel[0] = random_range(-1, 1);
}
while (ballvel[1] == 0) {
	ballvel[1] = random_range(-1, 1);
}