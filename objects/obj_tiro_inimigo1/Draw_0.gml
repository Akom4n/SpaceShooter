/// @description Insert description here
// You can write your code in this editor

draw_self();


gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_inimigo, image_index,x,y, image_xscale * .7, image_yscale * .7, image_angle, corzinha_inimigo, 0.3);
gpu_set_blendmode(bm_normal);
