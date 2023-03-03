/// @description Insert description here
// You can write your code in this editor

var play_button_x = window_get_width()/2 - 200;
var play_button_y = window_get_height()/2 - 50;



//Game Title
draw_set_font(Title_Font);
draw_text(window_get_width()/2 - 200, window_get_height()/2 - 300, "PONG"); 

//play button
if (mouse_x > play_button_x and mouse_x < play_button_x + 400 and mouse_y > play_button_y and mouse_y < play_button_y + 100){
	
	draw_set_font(Menu_Button_Font);
	draw_rectangle_color(play_button_x, play_button_y, play_button_x + 400, play_button_y + 100, c_green, c_red, c_orange, c_yellow, false);
	draw_text(play_button_x + 125, play_button_y + 25, "PLAY");	
	if (mouse_check_button_pressed(mb_any)) {
		room_goto(Game);
	}
	
}
else{
	draw_set_font(Menu_Button_Font);
	draw_rectangle_color(play_button_x, play_button_y, play_button_x + 400, play_button_y + 100, c_red, c_orange, c_yellow, c_green, false);
	draw_text(play_button_x + 125, play_button_y + 25, "PLAY");
}
//mouse pos display
draw_set_font(SmalBoi);
draw_text(mouse_x + 10, mouse_y - 10, "(X: " + string(mouse_x) + " Y: " + string(mouse_y) + ")");

