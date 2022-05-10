/// @description Insert description here
// You can write your code in this editor

//Desenhando a barra de vida do boss
//Desenhando a barra de vida com vinte pixels de altura
//Convertendo o valor da vida atual do boss em um numero entre 0 e 100
//vida atual dividida por vida max vai retornar um valor entre 0 e 1 enquanto vida_atual for menor ou igual do que vida max
//depois ao multiplicar esse resultado por 100 a gente recebe um valor entre 100 e 0
var _vida = (vida_atual / vida_max) * 100;

draw_healthbar(200, 20, 1080, 30, _vida, c_black, c_red, c_green, 0, true, 1);
