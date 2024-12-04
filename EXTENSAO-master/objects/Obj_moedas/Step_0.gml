if(place_meeting(x,y,Obj_player)){
	
	Obj_player.moedas++
	instance_destroy();
	Obj_som.sfx_moedas.play = true
	
}