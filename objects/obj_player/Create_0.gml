/// @description Insert description here

//Velocidade - .05  - Limite = 10 _ 45%
//Espera tiro - 10% - Limite = 20 _ 45%
//Level tiro - 1 - Limite = 5 _ 10%


velocidade = 5;

espera_tiro = room_speed;

level_tiro = 1;

//Sistema de vida
vida = 3;

escudos = 3;

meu_escudo = noone;



//Criando uma função para movimento
movendo_player = function()
{
var up, down, left, right;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));


//Movendo o y com base no resultado da conta para qual lado estou indo
y += (down - up) * velocidade;
x += (right - left) * velocidade;

}

//criando o escudo se eu apertei e se eu tenho mais do que 0 escudos

tiro1 = function()
{
	//meu codigo de criar o tiro
	instance_create_layer(x, y - sprite_height/ 2, "tiro", obj_tiro_player);
	//Criar o tiro a cada 1 segundo
}

tiro2 = function()
{
	var y_tiro = y - sprite_height/3;
	//Criando o segundo tiro da asa direita
	//Fazendo o tiro da direita ir para a direita
	var tiro_1 = instance_create_layer(x + 50,y_tiro + 10, "tiro", obj_tiro_player2);
	//Mandando o tiro 1 ir para a direita
	tiro_1.hspeed = +3;
	//Criando o segundo tiro da asa esquerda
	var tiro_2 = instance_create_layer(x - 50,y_tiro + 10, "tiro", obj_tiro_player2);
	tiro_2.hspeed = -3;
}

tiro4 = function()
{
	var direcao = 75;
	var y_tiro = y - sprite_height/3;
	repeat(3)
	{
		var meu_tiro = instance_create_layer(x, y_tiro, "tiro", obj_tiro_player);
		//Fazer o meu tiro ir para direita
		meu_tiro.direction = direcao;
		//Fazer o meu tiro olhar para a direção que ele está indo
		meu_tiro.image_angle = meu_tiro.direction - 90;
			
		//Aumentar a direção em 15
		direcao += 15;
	}
}

atirando = function()
{
	var fire = keyboard_check(vk_space);
	
	if (fire && alarm[0] == -1)
	{
		//ativando alarme para garantir que esse codigo vai ter que esperar 1 segundo
		alarm[0] = espera_tiro;
		
		//Criando o som do tiro
		audio_play_sound(sfx_laser2, 1, 0);
	
		//Criar uma condição para atirar dependendo do level do tiro
		//Tiro do level 1
		if (level_tiro == 1)
		{
			tiro1();
		}
		else if (level_tiro == 2)
		{
			tiro2();
		}
		else if (level_tiro == 3)
		{
			tiro1();
			tiro2();
		}
		else if (level_tiro == 4)
		{
			tiro4();
		}
		
		//Tiro do level 5
		else if (level_tiro == 5)
		{
			tiro2();
			tiro4();
		}
	}
}


///@method level_up(chance)
level_up = function(_chance)
{
	if (_chance >= 90)
	{
		//Aumentando o level do tiro SE o level do tiro for menor do que 5
		if (level_tiro < 5)
		{
			level_tiro++;
		}
		else if (level_tiro >= 5 && escudos < 3)
		{
			escudos++;
		}
	}
	else if (_chance >= 45)
	{
		if(velocidade < 10)
		{
			velocidade += .5;	
		}
		else
		{
			ganhando_pontos(50);
		}
	}
	else
	{
		if(espera_tiro > 20)
		{
			//Diminuindo a espera do tiro em 10%
			espera_tiro *= 0.9;
		}
		else
		{
			ganhando_pontos(50);
		}
	}
}

//@method perde_vida();
perde_vida = function()
{
	//Só vou perder vida se meu escudo é noone
	if (!meu_escudo)
	{
		if(vida > 0)
		{
			vida--;
			
			screenshake(5);
		}
		else
		{
			instance_destroy();
			
			screenshake(15);
		}
	}
}

cria_escudo = function()
{
	var shield = keyboard_check_pressed(ord("E"));

	if (shield && escudos > 0 && !meu_escudo)
	{
		var escudo = instance_create_layer(x, y, "escudo", obj_escudo);
			
		//Eu sou o seu alvo
		escudo.alvo = id;
		
		//Avisando que esse escudo é o meu escudo
		meu_escudo = escudo;
		
		//Diminuindo a quantidade de escudos
		escudos--;
	}
}



