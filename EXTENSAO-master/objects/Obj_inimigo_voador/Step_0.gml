if(global.pause){
	hspd=0;
	vspd=0;
	image_speed = 0;
	exit;
}
image_speed = 1;
event_inherited();

vspd=0;



if(distance_to_object(Obj_player)>distancia){

vspd = 1;

}else{
	
vspd = 0;
	
}
