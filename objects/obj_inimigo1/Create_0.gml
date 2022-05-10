/// @description Insert description here
// You can write your code in this editor

vspeed = 3;

//Chance de dropar o item = 20%
chance = 25;

pontinhos = 10;

//Iniciando o alarme entre 1 e 3
alarm[0] = random_range(1, 3) * room_speed;

//Checando se eu estou colidindo com algum outro inimigo
//Se eu colidir com alguem eu me destruo
if (place_meeting(x,y, obj_inimigo1))
{
	//Não executando o evento destroy
	instance_destroy(id, false);
}

atirando = function()
{
	if(y >= 0)
	{
		instance_create_layer(x - 4,y + sprite_height/2, "tiro", obj_tiro_inimigo1);
		
		//Som do tiro
		audio_play_sound(sfx_laser1, 1, 0);
	}
}

///@method dropa_item(chance_de_dropar_em_porcentagem)
dropa_item = function(_chance)
{
	var valor = random(100);
	
	//Se o valor for menor do que a chance, ele cria o item
	if (valor < _chance && y > 96)
	{
		//Criando o item
		instance_create_layer(x, y, "tiro", obj_power_up);
	}
}