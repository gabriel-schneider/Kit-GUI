if drag_state = true
{
    switch (orientation)
    {
        case ko_horizontal: 
        {
            value = ((global._kit_mouse_x - x + drag_off)/(width - btn_width))*value_max
        }; break;
        case ko_vertical: 
        {
            value = ((global._kit_mouse_y - y + drag_off)/(height - btn_height))*value_max
        }; break;
    }    
    kit_scrollbar_clamp_value(id)
}

if __last_value <> value
{
    __last_value = value
    if evt_change_script > -1
    {
        script_execute(evt_change_script, id, master_id, value)
    }
}
