///kit_dialog_set_size(id, width, height)
var this = argument0;
this.elm_panel.width = max(argument1, max(string_width(this.elm_label.caption), string_width(this.elm_panel.header_text)) + 32)
this.elm_panel.height = max(argument2, string_height(this.elm_label.caption) + 32)
kit_element_set_offset(this.elm_panel, floor(this.width*0.5 - this.elm_panel.width*0.5),
                                       floor(this.height*0.5 - this.elm_panel.height*0.5))


