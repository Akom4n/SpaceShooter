/// @description Criando os inimigos
// You can write your code in this editor

//Repetindo o mesmo codigo
//Criando os inimigos
if(!instance_exists(obj_inimigo1))
{
	var repetir = 10 * level;
	//Crio inimigos se os inimigos não existem
	//Só criar inimigos SE eu ainda não cheguei no lv 10
	if (level < 10)
	{
		repeat(repetir)
		{
			cria_inimigos();
		}
	
	}
	else 
	{
		//Criar o boss
		if (criar_boss == true)
		{
			layer_sequence_create("Boss_entrada", 960, 512, sq_boss_entrada);
		
			//Avisar que eu não possuo mais criar o boss 
			criar_boss = false;
			
			//Parando de tocar a música
			audio_stop_all();
		}
	}
	//Criar o boss(sequence de entrada do boss)
	//Garantir que eu só estou criando ela uma vez
	
}



//Reiniciando o alarme em 5 segundo
alarm[0] = room_speed * 5;