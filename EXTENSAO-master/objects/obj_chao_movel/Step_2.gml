var _player = instance_place(x, y-1,Obj_player) 
if(instance_exists(Obj_player)){
	with(Obj_player){	
		if (place_meeting(x, y + 1, other.id)){
			x += other.velh;
			y += other.velv;
		}	
	}	
}


if(velv != 0){
	
	if(velv>0){
		
	array_push(lista_colisao,Obj_player)	
		
	}
	
	if(_player && velv <0){
		
		if(place_meeting(x,y + velv - _player.sprite_height, lista_colisao )){
			
		velv *= -1;	
			
		}
	
	}
	
	if (place_meeting(x, y + velv, lista_colisao)){
		
		
		lista_colisao = [obj_chao,obj_chao_invisivel]
		
		velv *=-1;
		
		
	}
	
}

x += velh;
y +=velv;
