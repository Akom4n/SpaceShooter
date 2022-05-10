/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


//Checando se eu ja passei do 1/3 da tela
if (y > room_height/3 && posso_me_mover_para_lado == true)
	{
	//checando em que lado da room eu estou
	//Se o meu x for maior do que 1920/2 ou seja, 960
	if (x >= room_width /2) 
	{
		hspeed = -4;
		
		posso_me_mover_para_lado = false;
	}
	else
	{
		hspeed = +4;
		
		posso_me_mover_para_lado = false;
	}
}
