event_inherited();
move_dir=1;
move_spd=5.4;
vida=2;
valor_pontos=10;

state_andando = function(){
		
	sprite_index = Spr_ratoBurro;
	hspd=move_dir * move_spd
	
	if(place_meeting(x+hspd, y, obj_chao)){
	
		move_dir*= -1;
	}

}
state=state_andando;

