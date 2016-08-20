//is_visible = false
width = global._kit_width
height = global._kit_height

elm_panel = kit_element_create(self_name + '_panel', 'panel', 0, 0, id)
elm_panel.height = 256
elm_buttons[0] = kit_element_create(self_name + '_btn0', 'button', 0, 0, elm_panel)
elm_label = kit_element_create(self_name + '_label', 'label', 0, 0, elm_panel)
//elm_edit = kit_element_create(self_name + '_label', '_edit', 0, 0, elm_panel)


