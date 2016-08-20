///kit_editbox_sel_fix(id)
//Corrige o posicionamento dos ponteiros 
//para serem usados corretamente em outras funções.

var this = argument0;

if this.selector_pos[1] < this.selector_pos[0]
{
    var t = this.selector_pos[0];
    this.selector_pos[0] = this.selector_pos[1]
    this.selector_pos[1] = t
}

