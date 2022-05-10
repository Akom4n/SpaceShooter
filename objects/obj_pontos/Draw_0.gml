/// @description Insert description here
// You can write your code in this editor


//Desenhando a maior pontuação SE o objeto transição não existe

//Definindo a fonte
draw_set_font(fnt_pontos);
//Desenhando pontos
//variável s egurando o valor dos pontos
var _pontos = round(pontos);
draw_text(80, 200, "Maior pontuação: " + string(_pontos));
	
//Inimigos mortos
draw_text(80, 350, "Inimigos mortos: " + string(global.total_inimigos));
	
//Mortes do player
draw_text(80, 500, "Total de mortes: " + string(global.total_mortes));
	
//Resetando a fonte
draw_set_font(-1);

//Fazendop pontos chegar até o valor do max pontos
//Se pontos for menor do que max pontos eu aumento o valor dele
//Pegando meio porcento do max pontos e adicionando esse valor em pontos enquanto ele for menor do que max pontos
if (pontos < global.max_pontos)
{
	//Aumentando o valor de pontos em meio porcento do max_pontos
	var _incrementa_pontos = global.max_pontos * 0.005; //é meio porcento do max_pontos
	pontos += _incrementa_pontos;
}
