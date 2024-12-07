// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function move_y(_velv,colisao = obj_chao, inst=id){
	
	with(inst){
		
		var dir_y = sign(_velv)
		repeat(abs(_velv)){
			if(place_meeting(x,y+dir_y,colisao)){
				
				return false;
			}
			else{
				x+=dir_y
			}
		}
	}
return true
}