/// @description Insert description here
// You can write your code in this editor

alarm[0] = room_speed;

//Começando invisivel
image_alpha = 0;
primeiro_tiro = false;

vida_minion = 10;

escala = 1;

aumenta_escala = 0.01;


//Checando se eu colidi com outro minion
if (place_meeting(x,y, obj_minion_boss))
{
	//Se eu colidi com outro minion eu subo 60 pixels
	y -= 128;
}



