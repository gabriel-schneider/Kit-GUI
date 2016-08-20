///kit_scrollbar_evt_click(id)
var this = argument0;
var rate = (value/value_max);
switch (this.orientation)
{
    case ko_horizontal: {
        var i = x + rate*(this.width - this.btn_width);
        this.drag_state = true
        this.drag_off = (i - global._kit_mouse_x) 
    } break;
    case ko_vertical: {
        var i = y + rate*(this.height - this.btn_height);
        if (global._kit_mouse_y > i) and (global._kit_mouse_y < i + this.btn_height)
        {
            this.drag_state = true
            this.drag_off = (i - global._kit_mouse_y)
        } 
    } break;
}

kit_element_evt_click(this)

