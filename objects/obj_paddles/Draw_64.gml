/// @description Insert description here
// You can write your code in this editor

//draw paddles
draw_set_color(c_white);
	//draw left paddle
draw_rectangle(paddle1pos[0], paddle1pos[1], paddle1pos[0] + paddlesize[0], paddle1pos[1] + paddlesize[1], false);
	//draw right paddle
draw_rectangle(paddle2pos[0], paddle2pos[1], paddle2pos[0] - paddlesize[0], paddle2pos[1] + paddlesize[1], false);

//draw mid line 
draw_rectangle(window_get_width()/2 - 2, 0, window_get_width()/2 + 2, window_get_height(), false);