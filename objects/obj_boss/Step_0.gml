/// @description Insert description here
// You can write your code in this editor

//Checando se não estou na sprite 4
if (estado_atual != "estado 4")
{
	//Usando a sprite original
	sprite_index = spr_boss_combate;
}

if (keyboard_check(vk_enter))
{
	vida_atual -= 10;
}

troca_estado();


//Iniciando o estado 1
if (estado_atual == "estado 1")
{
	//Codigo do estado 1
	estado_01();
}
else if (estado_atual == "estado 2")
{
	//Codigo do estado 2
	estado_02();
}
else if (estado_atual == "estado 3")
{
	estado_03();
}
else if (estado_atual == "estado 4")
{
	estado_04();
}
