///kit_button_evt_click(id)
var this = argument0;

if !this.enabled
{
    kit_error_tell(1001)
    return -2    
}

kit_element_evt_click(this.id)
