///kit_panel_evt_click(id)
var this = argument0;
if (this.header_show) && (global._kit_mouse_y < this.y + this.header_height)
{
    this.drag_state = true
    this.drag_offx = global._kit_mouse_x - this.x
    this.drag_offy = global._kit_mouse_y - this.y
}

kit_element_evt_click(this)
