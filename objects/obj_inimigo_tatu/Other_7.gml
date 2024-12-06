/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(sprite_index == Spr_inimigoTatuAlerta){
	preparando = true;
	//preparado();
}
if(sprite_index == Spr_inimigoTatuBatendo){
	preparando = false;
	correndo = false;
	
	//preparado();
	
	sprite_index = Spr_inimigoTatu;
	move_dir=1;
	move_spd=4;
}
//if(sprite_index == Spr_inimigoTatu){
	//correndo = false;
    //preparando = false;
//}
//if(sprite_index == Spr_inimigoTatuStartCorrida){
	//corrida();
	//sprite_index = Spr_inimigoTatuCorrendo;
//}