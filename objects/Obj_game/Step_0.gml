if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case game_start:
			room_goto(game_room);
			break;
			
		case game_win:
		case game_over:
			game_restart();
			break;
	}
}

if(room == game_room){
	if(score >= 300){
		room_goto(game_win);
		audio_play_sound(snd_win, 1, false);
	}

	if(lives <= 0){
		room_goto(game_over);
		audio_play_sound(snd_lose, 1, false);
	}
}