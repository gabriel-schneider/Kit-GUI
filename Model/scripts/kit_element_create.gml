///kit_element_create(name, component_name, x, y [, master_element])
/*
//
//  Cria um novo elemento
//
*/

show_debug_message('---------------------------------------------------------------')
var cmp_obj;
cmp_obj = global._kit_component_database[? argument[1]]
if !is_undefined(cmp_obj)
{
   
    var elm_inst;
    elm_inst = instance_create(argument[2], argument[3], cmp_obj)
    
    elm_inst.component_type = argument[1]
    elm_inst.self_name = argument[0]
    
    ds_list_add(global._kit_instance_id, elm_inst)
    ds_list_add(global._kit_instance_name, argument[0])
    
    if argument_count > 4
    {
        var master_id;
        master_id = argument[4]
        if is_string(master_id)
        {
            master_id = kit_element_find_by_name(master_id);
            if is_undefined(master_id)
            {
                return (false)
            }
        }
        
        elm_inst.master_id = master_id
        elm_inst.xoffset = elm_inst.x
        elm_inst.yoffset = elm_inst.y
        
        var master_order_index;
        master_order_index = ds_list_find_index(global._kit_instance_order, elm_inst.master_id)
        ds_list_insert(global._kit_instance_order, master_order_index + 1, elm_inst) 
               
    } else
    {
        ds_list_add(global._kit_instance_order, elm_inst) 
    }
    
    with (elm_inst)
    {
        var evt_create = asset_get_index('kit_' + argument[1] + '_evt_create')
        if script_exists(evt_create)
        {script_execute(evt_create)}
        
        if script_exists(evt_after_create)
        {script_execute(evt_after_create)}
        
    }
    return (elm_inst)
} else
{
    kit_error_tell(5)
    return (5)
}
