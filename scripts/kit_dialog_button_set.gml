///kit_dialog_button_set(id, btn_text1, btn_text2, btn_text3)
var this = argument[0];



for (var i=0; i<array_length_1d(this.elm_buttons); i+=1)
{
    kit_element_delete_by_id(this.elm_buttons[i]);
};

var button_count = argument_count - 1
var button_width = 96
var button_startx = floor(this.elm_panel.width*0.5 - (button_width + 8)*button_count*0.5)
for (var i=0; i<button_count; i+=1)
{
    if i < button_count
    {
        this.elm_buttons[i] = kit_element_create(this.self_name + '_btn' + string(i), 'button', button_startx + (i*104), this.elm_panel.height - 40, this.elm_panel)    
        this.elm_buttons[i].width = 96
        this.elm_buttons[i].height = 32;  
        this.elm_buttons[i].caption = argument[i + 1]      
    }
};






