///kit_listbox_clamp(id)
//Não deixa que o offset (usada na visualização do itens) passe de um certo limite
var this = argument0;
this.list_offset = clamp(this.list_offset, 0, max(0, ds_list_size(this.list_text) - floor(this.height/this.item_height)))
