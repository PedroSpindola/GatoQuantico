if(global.pause){
	hspd=0;
	image_speed = 0;
	exit;
}
image_speed = 1;
event_inherited();
state();

if(place_meeting(x,y,Obj_player)){
	
	sprite_index = Spr_ratoBurroColisao; 
	hspd=0;
	Obj_player.vida--;
	
}