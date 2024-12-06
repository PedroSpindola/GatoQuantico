if(position_meeting(mouse_x,mouse_y,self)){

	sprite_index = Spr_Hidden	
	
}else{
	
	sprite_index = Spr_normal	
	
}
if(position_meeting(mouse_x,mouse_y,self) and mouse_check_button_pressed(mb_left)){

	Obj_som.Sfx_selecaoBotao.play = true
	if(!audio_is_playing(Obj_som.Sfx_selecaoBotao)){
	room_goto(RoomIndex)
	}
	
	
}
