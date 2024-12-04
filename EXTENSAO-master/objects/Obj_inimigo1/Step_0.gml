event_inherited();
state();

if(place_meeting(x,y,Obj_player)){
	
	sprite_index = Spr_ratoBurroColisao; 
	hspd=0;
	Obj_player.vida--;
	
}