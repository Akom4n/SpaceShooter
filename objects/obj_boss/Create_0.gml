/// @description Insert description here
// You can write your code in this editor

/*
estado 1 - parado dando o tiro 2
estado 2 - movendo dando o tiro	1
estado 3 - parado intercalando entre o 1 e o 2

(estado 4)
estado especial 1 = ficar invulneravel enquanto cria 2 minions para recuperar a vida

*/

//Tocando a musica do boss
audio_play_sound(snd_boss_fight, 0, 1);

//Iniciando o sistema de vida
vida_max = 1500;
vida_atual = vida_max;

estado_atual = choose("estado 1", "estado 2", "estado 3", "estado 4");


delay_tiro = room_speed / 2; //Meio segundo
espera_tiro = 0;

delay_estado = room_speed * 7; //5 segundos
espera_estado = delay_estado;

velocidade_horizontal = 3;

//Criei minions
criar_minions = true;



//Metodo do estado 01

tiro_02 = function()
{
	instance_create_layer(x, y + 80, "tiro", obj_tiro_inimigo2);
	//Som do tiro
	audio_play_sound(sfx_laser1, 1, 0);
}

//@@@Method tiro_01(true_direita_false_esquerda)
tiro_01 = function(_direita)
{
	
	if (_direita)
	{
		var _posx = 160;
	}
	else
	{
		var _posx = -160;
	}
	
	instance_create_layer(x + _posx, y + 10, "tiro", obj_tiro_inimigo1);
	
	//Som do tiro
	audio_play_sound(sfx_laser1, 1, 0);
}

estado_01 = function()
{
	//Diminuindo da espera tiro 
	espera_tiro--;
	
	//Codigo do estado 1
	//Criando o tiro 2 SE a espera do tiro for menor do que ou igual a 0
	if(espera_tiro <= 0)
	{
		tiro_02();
		
		//Vou mandar ele esperar
		espera_tiro = delay_tiro;
	}
}

estado_02 = function()
{
	//Indo para a direita
	x += velocidade_horizontal;
	
	//invertendo a velocidade horizontal se eu toquei no limite da tela
	if (x >= 1632 || x <= 288)
	{
		velocidade_horizontal *= -1;
	}
	
	espera_tiro--;
	//Codigo do estado 2

	if(espera_tiro <= 0)
	{
		//criando tiro da esquerda Se a espera do tiro for 0 ou menos
		tiro_01(false);
		//criando tiro da direita Se a espera do tiro for 0 ou menos
		tiro_01(true);
		
		espera_tiro = delay_tiro * 2;
	}
}

estado_03 = function()
{
	//Diminuindo da espera tiro 
	espera_tiro--;
	
	//Codigo do estado 1
	//Criando o tiro 2 SE a espera do tiro for menor do que ou igual a 0
	if(espera_tiro <= 0)
	{
		tiro_02();
		
		//Vou mandar ele esperar
		espera_tiro = delay_tiro * 2;
	}	
	//Criando o tiro 1
	if (espera_tiro == delay_tiro)
	{
		tiro_01(false);
	}
	if (espera_tiro == delay_tiro + round(delay_tiro / 2))
	{
		tiro_01(true);
	}
}

estado_04 = function()
{
	//Trocando de estado
	sprite_index = spr_boss_escuro;
	
	//Indo para o meio da tela
	//Convertendo esse valor para 1, -1 ou 0
	//Se na função sign eu dou um valor positivo, qualquer valor ele retorna 1
	//Se eu dou um valor negativo, qualquer valor ele retorna -1
	//se eu dou 0 ele retorna 0
	x += sign(room_width / 2 - x); 
	
	
	if(criar_minions)
	{
		var _minion = instance_create_layer(128, 672, "inimigos", obj_minion_boss);
		_minion.image_angle = 90;
	
		_minion = instance_create_layer(1760, 672, "inimigos", obj_minion_boss);
		_minion.image_angle = 270;
		
		//Ja criei os minions, não posso criar mais
		criar_minions = false;
	}
}

troca_estado = function()
{	
	//Alternando os estados
	//Diminuindo a espera do estado
	espera_estado--;
	if(espera_estado <= 0)
	{
	//Vou escolher um outro estado SE minha vida não for menor do que metade
		if(vida_atual > vida_max / 2)
		{
		estado_atual = choose("estado 1", "estado 2", "estado 3");
		}
		else
		{
		//Estou com metade ou menos da vida 
		estado_atual = choose("estado 1","estado 2","estado 3","estado 4");
		}
		//Fazendo o espera estado ter um valor alto novamente
		espera_estado = delay_estado;
	
		//pode criar minions 
		criar_minions = true;
	}
}
