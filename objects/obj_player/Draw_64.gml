/// @description Insert description here
// You can write your code in this editor


var multiplicador = 0;
var espaco = 40;

repeat(vida)
{
	draw_sprite_ext(spr_player, 1, 35 + espaco * multiplicador, 60, image_xscale / 3, image_yscale / 3, 0, c_white, 0.3);

	//Depois de desenhar aumente o valor de multiplicador
	multiplicador++;
}

//Resetando multiplicador
multiplicador = 0;

repeat (escudos)
{
	draw_sprite_ext(spr_escudo_player, 2, 35 + espaco * multiplicador, 110, 0.3, 0.3, 0, c_white, 0.3);
	
	multiplicador++;
}
