/// @description Insert description here
// You can write your code in this editor

//Diminuindo o image index
if(image_index > 0)
{
	//Diminuir a imagem
	image_index--;
	
	//Ficar mais transparente
	image_alpha -= 0.2;
}
else
{
	instance_destroy();
}
//Reiniciando o alarme
alarm[0] = room_speed;

