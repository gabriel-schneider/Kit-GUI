draw_set_color(bg_color)
draw_rectangle(x, y, x + width, y + height, false)
draw_set_color(outline_color)
draw_rectangle(x, y, x + width - 1, y + height - 1, true)
if checked
{
 draw_set_color(check_color)
 draw_rectangle(x + 4, y + 4, x + width - 4, y + height - 4, false)   
}
draw_set_color(caption_color)
draw_set_halign(0)
draw_set_valign(1)
draw_text(x + width + 2, y + height*0.5, caption)

