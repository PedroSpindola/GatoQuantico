#macro auTipoSfx  "SFX"
#macro auTipoMusica  "MUSICA"

function audioControle(str_sfx, str_musica, str_master) constructor{
	
	global.audioControlle = self;
	
	lista_audio = ds_list_create();
	
	global_sfx = str_sfx;
	global_musica= str_musica;
	global_master= str_master
	
	//metodo update
	static update = function(){
		
		
		
		var tamanho = ds_list_size(lista_audio);
		for(var i = 0; i<tamanho; i++){
			
			lista_audio[| i].update();
			
		}
		
	}
}

function audioElement() constructor{

	controller = global.audioControlle
	
	ds_list_add(controller.lista_audio, self);
	
	play = false;
	somId = noone;
	som_tipo = noone;
	offset = 1;
	
	static update = function(){ }
	
}

function audioPlaySfx(_id,_tipo,_offset=1): audioElement() constructor{
	
	somId = _id
	som_tipo = _tipo
	offset = _offset
	
	static update = function(){ 
	
		if(play){
		
			var som = audio_play_sound(somId,0,false)
			
			
			
			if(som_tipo == auTipoSfx){
				
				
				
			}
			else{
				
				
				
			}
			
			
			play = false
		
		}
	}
}
	
	
function AudioPlayMusica(_id,_tipo,_mis, _offset=1): audioElement() constructor{
	
	somId = noone;
	som_tipo = noone;
	offset = 1;
	id_playind = noone;
	vol=0;
	vol_spd = 1/(game_get_speed(gamespeed_fps) * (_mis*0.001))
	
	static update = function(){ 
		
		if(play){
		
		
			if(!audio_is_playing(id_playind)){
				
				id_playind = audio_play_sound(somId,1,true)
				
			}
			
			if(vol<1){
				
				vol+= vol_spd
				
			}else{
				
				vol=1;	
				
			}
		
		
		}
		if(!play){
			
			if(vol>0){
				
				vol-=vol_spd
					
			}else{
				
				vol= 0;
				audio_stop_sound(somId)
					
			}
			
		}
		
		if(audio_is_playing(id_playind)){
			
			
			
		}
	
	}
}