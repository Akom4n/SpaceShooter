/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

chance = 35;

pontinhos = 20;

//Criando minha variável de controle para saber se eu posso me mover para o lado
posso_me_mover_para_lado = true;

atirando = function()
{
	//Criando meu tiro
	if(y >= 0)
	{
		instance_create_layer(x, y + sprite_height / 2, "tiro", obj_tiro_inimigo2);
		//Som do tiro
		audio_play_sound(sfx_laser1, 1, 0);
	}
}


