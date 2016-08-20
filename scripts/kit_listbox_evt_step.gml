if selected = true
{
    list_offset += (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up))
    kit_listbox_clamp(id)
}

if vscrollbar_show = false
{
    if instance_exists(vscrollbar_element)
    {
        with (vscrollbar_element)
        {
            instance_destroy()
        }
    }
} else
{
    if !instance_exists(vscrollbar_element)
    {
        kit_listbox_sb_create(id)
    }    
}
