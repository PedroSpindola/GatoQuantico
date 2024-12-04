
function scr_PlayerStateAttack(){
	
 //Colocando ID dos inimigos nas listas para a função de ataque.
var num_inimigos = instance_place_list(x, y, Obj_inimigo1, inimigos_na_hitbox, false);
var inimigos = 0;

 if (inimigos) > 0{
	
	 for (var i = 0; i < inimigos; i++) {
	
		 var inimigoID = inimigos_na_hitbox [| i]
 
		 if (ds_list_find_index(inimigos_atingidos, inimigoID)) == -1 {
			 ds_list_add (inimigos_atingidos, inimigoID);
			 
			 with(inimigoID){
			 hp-=10;
			 }
		 }
	 }
 }
 ds_list_destroy(inimigos_na_hitbox);
 if fim_da_animacao(){
	 state = PlayerStateFree();
}
}