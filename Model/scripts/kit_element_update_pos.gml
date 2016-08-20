///kit_element_update_pos(element_id)
with (argument[0])
{
    if (master_id > -1)
    {
        if instance_exists(master_id)
        {
            x = master_id.x + xoffset
            y = master_id.y + yoffset
        } else
        {
            kit_debug_msg('Elemento pai não existe!!!!')
            master_id = -1
        }   
    }
}
