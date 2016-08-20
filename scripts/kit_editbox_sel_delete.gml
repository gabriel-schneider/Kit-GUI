///kit_editbox_sel_delete(id)
//Deleta o texto dentro da seleção atual
var this = argument0;

kit_editbox_sel_fix(this)
this.text = string_delete(this.text, this.selector_pos[0] + 1, this.selector_pos[1] - this.selector_pos[0])
this.selector_pos[1] = this.selector_pos[0]

