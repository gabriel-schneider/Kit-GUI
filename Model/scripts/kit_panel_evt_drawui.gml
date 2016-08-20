draw_set_color(bg_color)
draw_rectangle(x, y, x + width, y + height, false)
if header_show
{
    draw_set_color(header_bg_color)
    draw_rectangle(x, y, x + width, y + header_height, false)
    draw_set_color(header_text_color)
    draw_set_halign(header_text_align)       
    draw_set_valign(1)
    draw_text(x + floor(header_text_align*(width/2)), y + header_height*0.5, header_text)
}
