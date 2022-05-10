/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y,"inimigos", obj_explosao);

//Rodando o metodo de ganhar pontos
if (instance_exists(obj_control))
{
	obj_control.ganha_pontos(pontinhos);
}

//Dropando o item
dropa_item(chance);

//Criando o screenshake
screenshake(5);

//Aumentando o numero de inimigos mortos

global.total_inimigos++;
