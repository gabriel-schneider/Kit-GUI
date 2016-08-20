var d = kit_element_create('meu_diag', 'dialog', 0, 0);
kit_dialog_set_content(d, 'Meu Titulo', 'Item selecionado: ' + kit_listbox_current_text(argument0))
kit_dialog_set_size(d, 320, 192)
kit_dialog_button_set(d, 'Ok', 'Fechar',)
d.elm_buttons[0].evt_click_script = kit_element_delete_by_id
d.elm_buttons[0].evt_click_args[0] = d
kit_dialog_show(d)
//kit_dialog_setup_basic(d, 'Meu Titulo', 'Texto super bonito!', 2, 512, true)
