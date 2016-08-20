///kit_dialog_setup_basic(id, title, text, button_count, width, show)
var this = argument[0];
var title = argument[1];
var text = argument[2];
var button_count = argument[3];

if argument[4] > 0 
{
    this.elm_panel.width = argument[4]
} else
{
    this.elm_panel.width = max(string_width(text), string_width(title)) + 32
}

kit_element_set_offset(this.elm_panel, floor(this.width*0.5 - this.elm_panel.width*0.5),
                                       floor(this.height*0.5 - this.elm_panel.height*0.5))

kit_element_set_offset(this.elm_label, floor(this.elm_panel.width*0.5), floor(this.elm_panel.height*0.5))


for (var i=0; i<array_length_1d(this.elm_buttons); i+=1)
{
    kit_element_delete_by_id(this.elm_buttons[i]);
    if i < button_count
    {
        this.elm_buttons[i] = kit_element_create(this.self_name + '_btn' + string(i), 'button', 8 + (i*104), this.elm_panel.height - 40, this.elm_panel)    
        this.elm_buttons[i].width = 96
        this.elm_buttons[i].height = 32;        
    }
};

if argument[5]
{
    kit_dialog_show(this)
}
