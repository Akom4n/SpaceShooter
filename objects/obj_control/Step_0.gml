/// @description Insert description here
// You can write your code in this editor

//Checando se o player NÃO existe E se eu ainda NÃO criei a minha sequencia
//E o level não foi completo
if(!instance_exists(obj_player) && !gameover_seq && !level_completo)
{
	//Criando a minha sequence
	//Criando apenas UMA sequence
	gameover_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, sq_gameover);
	
	audio_play_sound(sfx_lose, 1, 0);
}


