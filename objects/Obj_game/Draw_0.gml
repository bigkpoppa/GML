switch(room){
	case game_room:
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "LIVES: "+string(lives));
		break;
	
	case game_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 200,
			@"Score 450 points to win.
			
			UP:	move
			SPACE: shoot
			LEFT/RIGHT: turn
			
			>>PRESS ENTER TO START<<
			"
		);
		draw_set_halign(fa_left);
		break;
	
	case game_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2, 200, "WINNER!",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 300,
			"Press enter to restart"
		);
		draw_set_halign(fa_left);
		break;
	
	case game_over:
	draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 1500, "Game Over",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 250,
			"Final Score: "+string(score)
		);
		draw_text(
			room_width/2, 300,
			"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		break;
}