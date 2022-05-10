/// @description Iniciando
// You can write your code in this editor

//Randomizando o jogo
randomize();

//Iniciando o alarme em 1 segundo
alarm[0] = room_speed;

//Iniciando o sistema de pontos
pontos = 0;

//Iniciando o sistema de level
level = 1;

//Quantos pontos eu preciso para o proximo level
proximo_level = 100;

//variavel de controle para o game over
gameover_seq = noone;

criar_boss = true;

level_completo = false;

//Criando um método para ganhar pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos;
	
	//Ganhando level SE os pontos forem maior do que o proximo level
	if (pontos >= proximo_level)
	{
		level++;
		
		//Dobrando o valor do proximo level
		proximo_level *= 2;
			
	}
}

//Criando o metodo para gerar inimigos 
cria_inimigos = function()
{
	randomize();

	//Definindo a posição x e y do inimigo
	var xx = irandom_range(48, 1872);
	//Aumentando o limite com base no level do jogo
	var yy = irandom_range(-96, -1504 - (level * 800));


	//Criando o inimigo com base no level
	//A chance de criar um inimigo mais forte depende do level

	var chance = random_range(0, level);

	var inimigo = obj_inimigo1;

	//Se o valor da chance for maior do que 2
	if (chance > 2)
	{
		inimigo = obj_inimigo2;
	}


	if(instance_exists(obj_player))
	{
		instance_create_layer(xx, yy, "inimigos", inimigo);
	}
}




