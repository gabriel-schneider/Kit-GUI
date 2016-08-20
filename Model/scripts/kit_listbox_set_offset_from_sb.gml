///kit_listbox_set_offset_from_sb(scrollbar_id, listbox_id, value)

/*
//
//  Define o offset da lista como sendo o valor do scrollbar
//
*/

var this = argument1;
this.list_offset = round(argument2)
kit_scrollbar_update(this.vscrollbar_element)

