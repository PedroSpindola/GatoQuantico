// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Approach(val1,val2,amout){
	
	if(val1<val2)
	{
	
		val1+=amout
		
		if(val1>val2){
			
			return val2;
		
		}
		
	}
	else{
		
		val1-=amout;
		
		if(val1<val2){
			
			return val2
		}
	
	
	}

	return val1;
}