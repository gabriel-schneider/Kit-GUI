draw_set_color(bg_color)
draw_rectangle(x, y, x + width, y + height, false)
var outc;
if selected
{outc = outline_selected_color}
else
{outc = outline_color}
draw_set_color(outc)
draw_rectangle(x, y, x + width, y + height, true)
draw_set_color(text_color)
draw_set_halign(0)
draw_set_valign(1)
draw_text(x + 4, y + height*0.5, text_display)
draw_set_color(outc)
var xx0, xx1, yy;
xx0 = x + 4 + string_width(string_copy(text_display, 1, selector_pos[0] - text_offset)) 
xx1 = x + 4 + string_width(string_copy(text_display, 1, selector_pos[1] - text_offset)) 
yy = y + height*0.5 
draw_set_color(outc)
draw_set_alpha(0.2)
draw_rectangle(xx0, yy - 8, xx1, yy + 8, false)
draw_set_alpha(1)
draw_rectangle(xx0, yy - 8, xx1, yy + 8, true)
draw_set_color(c_white)

