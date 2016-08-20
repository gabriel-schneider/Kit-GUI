kit_font_add('OpenSans', 'open_sans.ttf', 12)
kit_font_set('OpenSans')
draw_set_font(global._kit_font_current)

kit_element_create('raiz', 'primitive', 0, 0)

with (kit_element_create('painel_principal', 'panel', 128, 128))
{
    header_show = true
    header_text = 'Kit UI is awesome!'
    width = 280
    height = 320
} 


with (kit_element_create('lista_de_herois', 'listbox', 8, 40, 'painel_principal'))
{
    
    list_text = ds_list_create()
    ds_list_add(list_text, 'Cinzenta', 'Vermelha', 'Ártico', 'Estepes', 'Colorada', 'Feneco')
    list_value = ds_list_create()
    ds_list_add(list_value, spr_cinzenta, spr_vermelha, spr_artico, spr_estepes, spr_colorada, spr_feneco)
    kit_listbox_use_custom(id, false, list_text, list_value)
    
    width = 128
    height = 96
      
    evt_click_script = kit_demo_set_image
    evt_click_args[0] = kit_element_create('preview', 'imageviewer', 136, 0, 'lista_de_herois');
    evt_click_args[1] = id
    item_height = 24
    kit_listbox_sb_update(id)
    kit_listbox_evt_click(id)
} 

with (kit_element_create('botao_mensagem', 'button', 0, 104, 'lista_de_herois'))
{
    caption = 'Button A'
    width = 128
    bg_color = ck_green
    caption_color = c_white
    
    evt_click_script = show_test
    evt_click_args[0] = kit_element_find_by_name('lista_de_herois')
}


with (kit_element_create('caixa_texto', 'editbox', 0, 48, 'botao_mensagem'))
{
    width = 192
    height = 24    
    text = 'The quick brown fox jumps over the lazy dog.'
    //max_chars = 10
    selector_pos[0] = 4
    selector_pos[1] = 8
    kit_editbox_upd_display(id)
    kit_editbox_sel_fix(id)
}

with (kit_element_create('cb1', 'checkbox', 0, 32, 'caixa_texto'))
{
    checked = true
    width = 16
    height = 16    
    caption = 'Cute checkbox! <3'
    evt_click_script = kit_element_set_enabled
    evt_click_args[0] = kit_element_find_by_name('botao_mensagem')
}


with (kit_element_create('sb1', 'scrollbar', 0, 32, 'cb1'))
{
    width = 128
    height = 16    
    kit_scrollbar_update(id)
}

with (kit_element_create('lb1', 'label', 0, 32, 'sb1'))
{
    caption = 'Error label!'
    kit_label_autosize(id)
    bg_enabled = true
    bg_color = ck_red
    caption_color = c_white
    caption_halign = 1
}


with (kit_element_create('lb2', 'label', 128, 32, 'sb1'))
{
    caption = 'Warning label!'
    kit_label_autosize(id)
    bg_enabled = true
    bg_color = ck_orange
    caption_color = c_white
    caption_halign = 1
}





/*
with (kit_element_create('btn1', 'button', 32, 32, 'panel1'))
{
    caption = 'Button A'
    width = 128
    bg_color = ck_green
    caption_color = ck_white
    
    //evt_click_script = moveme
    //evt_click_args[0] = kit_element_find_by_name('prim1')
    //evt_click_args[1] = 30

}

with (kit_element_create('btn2', 'button', 0, 48, 'panel1'))
{
    caption = 'Button B'
    width = 128
    caption_color = ck_white
    bg_color = ck_orange
    
    //evt_click_script = hello
    //evt_click_args[0] = 10
    //evt_click_args[1] = 5
}

with (kit_element_create('listbox1', 'listbox', 32, 256, 'panel1'))
{
    list_text = ds_list_create()
    ds_list_add(list_text, 'Train', 'Cold', 'Overwatch')
    list_value = ds_list_create()
    ds_list_add(list_value, spr_train, spr_cold, spr_overwatch)
    width = 128
    height = 96
    evt_click_script = change_bg
    evt_click_args[0] = id
}
