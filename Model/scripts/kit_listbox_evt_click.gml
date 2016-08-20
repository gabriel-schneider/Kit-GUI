///kit_listbox_evt_click()
//Evento padrão de clique de uma listbox
var this = argument0;

//Guarda o item selecionado anterior, pode ser util para certas ocasiões (validação por exemplo)
this.evt_click_before_index = this.item_selected_index
this.item_selected_index = clamp(floor((global._kit_mouse_y - y)/this.item_height) + this.list_offset, 0, ds_list_size(this.list_text))

//Chama o script de clique padrão de um elemento
kit_element_evt_click(this)

//atualiza o scrollbar da lista
kit_listbox_sb_update(this)
