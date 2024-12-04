var player = place_meeting(x,y,Obj_player)
var espaco = keyboard_check_released(vk_space)

if(player and espaco){
	
	var tran =  instance_create_layer(0,0,layer,Obj_transicao)
	
	tran.destino = destino
	tran.xposicao = xposicao
	tran.yposicao = yposicao
}