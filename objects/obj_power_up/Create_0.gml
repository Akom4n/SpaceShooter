/// @description Insert description here
// You can write your code in this editor

//Criando uma chance entre 0 e 100 para ele decidir qual vai ser o upgrade

chance = random(100); //Chance vai ficar entre 0 e 100
//Se o valor de chance for 90 ou mais, ela cria o power up do tiro
//Senão se o valor de chance for 45 ou mais, ela cria o power up da velocidade
//Senão ela cria o power up da espera do tiro

//Fazendo ele se mover
speed = 2;
direction = irandom(359);

//Iniciando o alarme
alarm[0] = room_speed;

//Dependendo da chance a cor vai ser diferente

if (chance >= 90)
{
	cor = c_red;
}
else if (chance >= 45)
{
	cor = c_lime;
}
else
{
	cor = c_aqua;
}

