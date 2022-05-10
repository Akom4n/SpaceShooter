/// @description Se destruindo
// You can write your code in this editor

instance_create_layer(x,y,"tiro", obj_impacto);
instance_destroy();
//Destruindo o inimigo
instance_destroy(other);
