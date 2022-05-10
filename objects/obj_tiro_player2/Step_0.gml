/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Mudando a direção depois que me movi X pixels
//Achar uma forma de ver qual era a minha posição inicial
//Checando se eu me movi 50 pixels para a direita
//Ou se o meu X atual é menor do que o xinicial - 50
if (x > xstart + 50 || x < xstart - 50)
{
	hspeed *= -1;
}

