/// @description Insert description here
// You can write your code in this editor

//Reiniciando APENAS se o player ja morreu
if (gameover_seq)
{
	//Criando o objeto transição com o destino da room inicial 
	var _transicao = instance_create_layer(0, 0 , "player", obj_transicao);
	_transicao.destino = rm_inicio;
	
	//Checando se os pontos são a maior pontuação
	if (pontos > global.max_pontos)
	{
		global.max_pontos = pontos;
	}
	
}