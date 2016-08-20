///kit_element_delete_by_name(element_name)

var obj_id;
obj_id = ds_list_find_value(global._kit_instance_id, ds_list_find_index(global._kit_instance_name, argument[0]))
kit_element_delete_by_id(obj_id)
