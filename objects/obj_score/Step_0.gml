/// @description Insert description here
// You can write your code in this editor

if (player1score > 9) {
	winner = 1;
	room_goto(Game_Over);
}
if (player2score > 9) {
	winner = 2;
	room_goto(Game_Over);
}