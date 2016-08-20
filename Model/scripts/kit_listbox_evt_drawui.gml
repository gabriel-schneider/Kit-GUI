draw_set_color(bg_color)
draw_rectangle(x, y, x + width, y + height, false)
draw_set_font(global._kit_font_current)
draw_set_color(text_color)
draw_set_halign(0)
draw_set_valign(1)
var to;
to = min(list_offset + floor(height/item_height), ds_list_size(list_text))
for (i=list_offset; i<to; i+=1)
{
    if i = item_selected_index
    {
        draw_set_color(item_selected_color)
        var yy = y + i*item_height - list_offset*item_height;
        draw_rectangle(x, yy, x + width, yy + item_height, false)   
        draw_set_color(text_color)
    }
    draw_text(x + 4, y + i*item_height + item_height*0.5 - list_offset*item_height, list_text[| i])
};

draw_set_color(c_white)
