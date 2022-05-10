/// @description Insert description here
// You can write your code in this editor

//Evento que roda quando o objeto sai da memoria do computador
//Atualizando os pontos
if (pontos > global.max_pontos)
{
	global.max_pontos = pontos;
}

//Parando todos os sons
audio_stop_all();
