if(file_exists("save.txt")){
	file_delete("save.txt");
}
ini_open("save.txt");
ini_write_real("Jogador","x_atual",Obj_player.x);
ini_write_real("Jogador","y_atual",Obj_player.y);
//ini_write_real("Arma","estado_uso",Obj_player.arma.em_uso);
//ini_write_real("Arma","estado_atirar",Obj_player.arma.atirar);
ini_write_real("Arma","estado_arma",Obj_player.arma);
ini_write_real("Jogador","sala_atual",room);
ini_write_real("Jogador","Dinheiro", Obj_player.moedas);
ini_close();
show_message("jogo salvo");
