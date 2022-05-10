/// @description Rodando depois do player
// You can write your code in this editor

//Se o alvo for noone OU se a instancia do alvo NÃO existe, se mata!
if (!alvo or !instance_exists(alvo)) //Não tiver alvo
{
	instance_destroy();
}


//você vai ter que ficar na mesma posição que o seu alvo
//Conferir se o meu alvo existe no jogo
x = alvo.x;
y = alvo.y;
