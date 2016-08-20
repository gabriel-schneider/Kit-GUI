///kit_element_delete_by_id(element_id)
var s, i;
s = ds_list_size(global._kit_instance_id) - 1;
for (i=s; i>=0; i-=1)
{
    var o;
    o = global._kit_instance_id[| i]
    if o.master_id = argument0
    {
        kit_element_delete_by_id(o)     
    }
};

with (argument0)
{
    instance_destroy()
}   
 
ds_list_delete(global._kit_instance_order, ds_list_find_index(global._kit_instance_order, argument0))
ds_list_delete(global._kit_instance_id, ds_list_find_index(global._kit_instance_id, argument0))
ds_list_delete(global._kit_instance_name, ds_list_find_index(global._kit_instance_name, argument0))  
