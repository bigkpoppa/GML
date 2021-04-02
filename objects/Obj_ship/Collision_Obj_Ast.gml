lives -= 1;

with(Obj_game){
	alarm[1] = room_speed;
}
audio_play_sound(snd_die, 1, false);

instance_destroy();

repeat(10){
	instance_create_layer(x,y,"Instances",Obj_deb);
	instance_create_layer(room_width/2,room_height/2,"Instances",Obj_ship);
}