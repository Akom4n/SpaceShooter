/// @description Insert description here
// You can write your code in this editor


//Movendo a tela
view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

//Diminuindo o valor do screenshake
//Multiplicando ele por 0.995, ele perde 5% por step
shake *= .9;

//Se o valor do shake for menor do que 0.5, então ele se destroi

if(shake < 0.5)
{
	instance_destroy();
}