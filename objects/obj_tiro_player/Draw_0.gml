/// @description Insert description here
// You can write your code in this editor

//Me desenhando 
draw_self();

/*
Meu brtilho = 16x24 = 16x24
Meu brilho 59x109 = 

*/

//Alterando como o video trata as cores
gpu_set_blendmode(bm_add);

draw_sprite_ext(brilho, sprite_index,x, y, image_xscale * .7, image_yscale * .7, image_angle, corzinha, .7);
//Voltando ao normal
gpu_set_blendmode(bm_normal);
