///kit_listbox_sb_update(id)
var this = argument0;

if !instance_exists(this.vscrollbar_element)
{exit}

this.vscrollbar_element.xoffset = this.width - 16
this.vscrollbar_element.value = this.list_offset
this.vscrollbar_element.width = 16
this.vscrollbar_element.height = this.height

if ds_exists(this.list_value, ds_type_list)
{
    this.vscrollbar_element.value_max = max(0, ds_list_size(this.list_text) - floor(this.height/this.item_height))
}

this.vscrollbar_element.btn_size = floor(this.height/this.vscrollbar_element.value_max)
kit_scrollbar_update(this.vscrollbar_element)

