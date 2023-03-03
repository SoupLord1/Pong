/// @description Insert description here
// You can write your code in this editor

//moveball
if (rescooldown == 0) {
	ballpos[0] += ballvel[0] * ballspeed;
	ballpos[1] += ballvel[1] * ballspeed;
}
else {
	rescooldown -= 1
}
//draw ball
draw_circle(ballpos[0], ballpos[1], ballrad, false);

//check collisions

	//check x wall collisions
if (ballpos[0] < ballrad/2) {
	rescooldown = 120;
	ballpos = [window_get_width()/2, window_get_height()/2];
	obj_score.player2score += 1;
}
if (ballpos[0] > window_get_width() - ballrad/2) {
	rescooldown = 120;
	ballpos = [window_get_width()/2, window_get_height()/2];
	obj_score.player1score += 1;
}

if (ballpos[0] > ballrad/2 and ballpos[0] < obj_paddles.paddlesize[0]) and ballpos[1] > obj_paddles.paddle1pos[1] + ballrad/2 and ballpos[1] < obj_paddles.paddle1pos[1] + obj_paddles.paddlesize[1] + ballrad/2 {
	ballvel[0] *= -1;
	if (obj_paddles.paddlespeed > 1) {
		obj_paddles.paddlespeed -= 0.2
	}
}
if (ballpos[0] < window_get_width() - ballrad/2 and ballpos[0] > window_get_width() - obj_paddles.paddlesize[0]) and ballpos[1] > obj_paddles.paddle2pos[1] + ballrad/2 and ballpos[1] < obj_paddles.paddle2pos[1] + obj_paddles.paddlesize[1] + ballrad/2 {
	ballvel[0] *= -1;
	if (obj_paddles.paddlespeed > 1) {
		obj_paddles.paddlespeed -= 0.2
	}
}

	//check y wall collisions
if (ballpos[1] < ballrad/2) {
	ballvel[1] = 1;
}
if (ballpos[1] > window_get_height() - ballrad/2) {
	ballvel[1] = -1;
}