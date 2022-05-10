/// @description Insert description here
// You can write your code in this editor

//Ficando visivel em 1 segundo se eu ainda não estou visivel
//Se eu ainda não estou visivel E se o meu alcance ainda não rodou 
if (image_alpha < 1 && primeiro_tiro == false)
{
	image_alpha += 2 / room_speed;
}

//Fazendo ele tornar o aumento da escala negativo SE ele ficou maior do que 1.5
//Fazendo ele também inverter o sinal da escala se ela for menor do que 0.5
if(escala > 1.5 or escala < 1)
{
	//Invertendo o aumento da escala
	aumenta_escala *= -1;
}

//Aumentando a escala pelo valor de aumento
escala += aumenta_escala;
//Diminuindo a escala enquanto ela for menor do que 0.5

