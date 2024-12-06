if(mudei){	
		
		
	alpha -=0.01
		
}else{
			
	alpha+= 0.01
		
}
	
if(alpha>=1){
	room_goto(destino)
	Obj_player.x = xposicao
	Obj_player.y = yposicao
}

if(mudei and alpha<=0){

	instance_destroy()	
	
}