draw_set_color(c_black);
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();
if(global.pause){
	draw_set_alpha(.6);
	draw_rectangle(0,0,gui_w,gui_h, false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	for(var i = 0; i<op_max; i++){
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_sprite(opcoes[i], 0, gui_w/2, gui_h/2.5 + (130 * i));
	}	
}