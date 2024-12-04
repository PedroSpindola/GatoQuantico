if(file_exists("save.txt")){
	ini_open("save.txt");
	Obj_player.x = ini_read_real("Jogador","x_atual",0);
	Obj_player.y = ini_read_real("Jogador","y_atual",0);
	//Obj_player.arma.em_uso = ini_read_real("Arma","estado_uso",0);
	//Obj_player.arma.atirar = ini_read_real("Arma","estado_atirar",0);
	room_goto(ini_read_real("Jogador", "sala_atual",Room1a));
	Obj_player.moedas = ini_read_real("Jogador","Dinheiro", 0);
	ini_close();

}


