image_xscale = 0.5;
image_yscale = 0.5;


collision_list = ds_list_create(); //lista da colisão dos inimigos
hitbox_list = ds_list_create(); //lista dos inimigos que ja tomaram dano no ataque
var c = instance_place_list(x,y,Obj_inimigos_parente,collision_list,false);

if(c > 0){
	for(var i = 0;i < ds_list_size(collision_list);i++){
		var target = collision_list[| i];
		if(!ds_list_find_value(hitbox_list,target)){
			ds_list_add(hitbox_list, target);
		with(target){
			vida = vida - 10;
			
			}
		} 
	}
}