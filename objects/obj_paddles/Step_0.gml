/// @description Insert description here
// You can write your code in this editor


//left paddle controls

if (keyboard_check(ord("W")) and paddle1pos[1] > 0) {
	paddle1pos[1] -= paddlespeed;
}
else if(keyboard_check(ord("S")) and paddle1pos[1] < window_get_height() - paddlesize[1]) {
	paddle1pos[1] += paddlespeed;
}

//right paddle controls
if (keyboard_check(vk_up) and paddle2pos[1] > 0) {
	paddle2pos[1] -= paddlespeed;
}
else if(keyboard_check(vk_down) and paddle2pos[1] < window_get_height() - paddlesize[1]) {
	paddle2pos[1] += paddlespeed;
}

//update collision boxes
