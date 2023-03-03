/// @description Insert description here
// You can write your code in this editor

//display scores
draw_set_font(Score_display);
draw_text(window_get_width()/2 - 100, 0, string(player1score));
draw_text(window_get_width()/2 + 25, 0, string(player2score));