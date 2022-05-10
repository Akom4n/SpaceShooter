/// @description Insert description here
// You can write your code in this editor



if (vida_minion > 0)
{
	vida_minion--;
	
	//Diminuindo a transparência
	image_alpha -= 0.08;
	
	//Aumentando o aumento da escala em 10%
	aumenta_escala *= 1.1;
}
else
{
	//Me matando
	instance_destroy();
}

//Destruindo o tiro
instance_destroy(other);
