///kit_listbox_sb_create(id)

/*
//
//  Cria a scrollbar da listbox
//
*/

var this = argument0;

this.vscrollbar_element = kit_element_create(this.self_name + '_vscroll', 'scrollbar', this.width, 0, this)
this.vscrollbar_element.width = 16
this.vscrollbar_element.height = this.height
this.vscrollbar_element.evt_change_script = kit_listbox_set_offset_from_sb
if ds_exists(this.list_value, ds_type_list)
{
    this.vscrollbar_element.value_max = ds_list_size(this.list_value)
}
kit_scrollbar_update(this.vscrollbar_element)
