///kit_step()
kit_update_mouse_pos()
global._kit_element_over = -1;
var i, elm_count;
elm_count = ds_list_size(global._kit_instance_order)
for (i=elm_count-1; i>=0; i-=1)
{
    var o = global._kit_instance_order[| i];
    if o.is_visible
    {
        if point_in_rectangle(global._kit_mouse_x, global._kit_mouse_y , o.x, o.y, o.x + o.width, o.y + o.height)
        {
            global._kit_element_over = o
            break;
        }
    }  
};

