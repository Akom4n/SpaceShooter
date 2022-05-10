/// @description Insert description here
// You can write your code in this editor


//Deixar a tela escura SE eu ainnda não troquei de room
if(troquei_room == false)
{
	alpha += 0.02;
}
else
{
	//Troquei de room, eu diminuo o alpha
	alpha -= 0.02;
}

if (alpha <= 0)
{
	instance_destroy();
}

//Checar se a tela esta totalmente escura, ou seja o alpha é 1 ou mais
//Mudar de room SE eu ainda não troquei de room
if (alpha >= 1 && troquei_room == false)
{
	room_goto(destino);
}




