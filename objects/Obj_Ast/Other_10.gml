/// @description Take Damage


score += 10;
audio_play_sound(snd_die, 1, false);
instance_destroy();

if(sprite_index == big){
	repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances",Obj_Ast);
		new_asteroid.sprite_index = med;
	}
} else if (sprite_index == med){
	repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances",Obj_Ast);
		new_asteroid.sprite_index = small;
	}
}
	
repeat(10){
	instance_create_layer(x,y,"Instances",Obj_deb);
}
	

