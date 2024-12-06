event_inherited();

if(vida>0){

	state();
	
}
else{

	is_dead = true	
	if(is_dead){
		
		
		sprite_index = Spr_player_dead
		hspd = 0
		vspd = 0
		
		if(Obj_player.image_index >= Obj_player.image_number -1){
			
			is_dead = false	
			
			room_goto(RoomQG)
			Obj_player.x= 224
			Obj_player.y = 320
			vida = 1 
			
		}
	}
}

usa_arma();
joga_arma();




/*
switch (state)
{
    case PlayerStateFree: 
        PlayerStateFree(); 
        break;
    case PlayerStateAttack: 
        PlayerStateAttack(); 
        break;
}