/// @description Insert description here
// You can write your code in this editor

//Só faz tudo isso se for diferente do estado 4
if (estado_atual != "estado 4")
{
	//perdendo 1 de vida
	if (vida_atual > 0)
	{
		vida_atual --;
	}
	else
	{
		instance_destroy();
	}

	instance_destroy(other);
}
