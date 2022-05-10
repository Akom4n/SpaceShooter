/// @description Insert description here
// You can write your code in this editor

draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, cor_explosao, 0.3);
gpu_set_blendmode(bm_normal);