/// @description Insert description here
// You can write your code in this editor


instance_create_layer(x, y, "tiro", obj_tiro_minion);

//reiniciando o alarme 
alarm[0] = room_speed / 2;

//Avisando que eu ja dei o primeiro tiro 
primeiro_tiro = true;
