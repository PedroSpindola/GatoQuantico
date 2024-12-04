function sys_save(_nome_arquivo = "nomearquivo.ini"){
	
	ini_open(_nome_arquivo)
	
	ini_write_real("save1","vida",Obj_player.vida)
	
	ini_close()
}
function sys_load(_nome_arquivo){
	
	ini_open(_nome_arquivo)
	
	ini_close()
	
}