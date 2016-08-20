global._kit_instance_id = ds_list_create()
global._kit_instance_name = ds_list_create()
global._kit_component_database = ds_map_create()
global._kit_instance_order = ds_list_create()
global._kit_font_database = ds_map_create()
global._kit_font_current = -1
global._kit_element_over = -1
global._kit_mouse_x = 0
global._kit_mouse_y = 0
global._kit_width = room_width
global._kit_height = room_height

kit_error_init()
